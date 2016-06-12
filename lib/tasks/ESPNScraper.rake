class ESPNScraper
  def scrape_espn(league)
    url = "http://espn.go.com/#{league.downcase}"
    doc = Nokogiri::HTML(open(url))
    league_obj = League.find_by(abbreviation: league)
    doc.css('.headlines ul li a').reverse.each do |headline|
      link = "http://espn.go.com" + headline.attribute('href').value
      title = headline.text
      Article.create(title: title, url: link, league: league_obj, source: "espn")
    end
  end

  def scrape_all_leagues
    League.all.each { |league| scrape_espn(league.abbreviation) }
  end

  def self.run
    self.new.scrape_all_leagues
  end
end
