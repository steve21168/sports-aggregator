class YahooScraper

  def scrape_yahoo(league)
    url = "http://sports.yahoo.com/#{league.downcase}"
    doc = Nokogiri::HTML(open(url))
    league_obj = League.find_by(abbreviation: league)

    doc.css('#mediasportstopheadlines a.title')[0..-2].each do |headline|
      link = url + headline.attribute("href").value
      title = headline.children.text
      Article.create(title: title, url: link, league: league_obj)
    end
  end

  def scrape_all_leagues
    scrape_yahoo("NBA")
    scrape_yahoo("NHL")
    scrape_yahoo("MLB")
    scrape_yahoo("NFL")
  end

  def self.run
    self.new.scrape_all_leagues
  end
end
