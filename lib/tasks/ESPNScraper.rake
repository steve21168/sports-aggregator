class ESPNScraper
  def scrape_espn(league)
    url = "http://espn.go.com/#{league.downcase}"
    doc = Nokogiri::HTML(open(url))
    league_obj = League.find_by(abbreviation: league)

    doc.css('.headlines ul li a').each do |headline|
      link = url + headline.attribute('href').value
      title = headline.text
      Article.create(title: title, url: link, league: league_obj)
    end
  end

  def scrape_all_leagues
    scrape_espn("NBA")
    scrape_espn("NHL")
    scrape_espn("MLB")
    scrape_espn("NFL")
  end

  def self.run
    self.new.scrape_all_leagues
  end
end
