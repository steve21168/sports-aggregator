class CBSScraper
  def scrape_cbs(league)
    url = "http://www.cbssports.com/#{league.downcase}"
    doc = Nokogiri::HTML(open(url))
    league_obj = League.find_by(abbreviation: league)

    doc.css('ul li.article-list-stack-item a').reverse.each do |link|
      title = link.children.css("h3").first.text.strip
      link =  "http://www.cbssports.com" + link.attributes["href"].value
      Article.create(title: title, url: link, league: league_obj, source: "cbs")
    end
  end

  def scrape_all_leagues
    League.all.each { |league| scrape_cbs(league.abbreviation) }
  end

  def self.run
    self.new.scrape_all_leagues
  end
end
