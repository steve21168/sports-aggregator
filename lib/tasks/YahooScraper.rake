class YahooScraper

  def scrape_yahoo(league)
    url = "http://sports.yahoo.com/#{league.downcase}"
    doc = Nokogiri::HTML(open(url))
    league_obj = League.find_by(abbreviation: league)

    doc.css('#mediasportstopheadlines a.title')[0..-2].reverse.each do |headline|
      link = "http://sports.yahoo.com" + headline.attribute("href").value
      title = headline.children.text
      Article.create(title: title, url: link, league: league_obj, source: "yahoo")
    end
  end

  def scrape_all_leagues
    League.all.each { |league| scrape_yahoo(league.abbreviation) }
  end

  def self.run
    self.new.scrape_all_leagues
  end
end
