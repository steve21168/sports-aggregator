module Adapter
  class NhlScraper
    attr_reader :team_name

    def initialize(team_name)
      @team_name = team_name
    end

    def live_scrape
      url = "http://#{team_name}.nhl.com/club/newsindex.htm"
      doc = Nokogiri::HTML(open(url))
      headlines_hash = {}
      doc.css('.headlineViewTitle a').each do |headline|
        link = "http://#{team_name}.nhl.com" + headline.attribute("href").value
        title = headline.children.text
        headlines_hash[title] = link
      end
      render json: headlines_hash
    end
  end

  class NbaScraper
    attr_reader :team_name

    def initialize(team_name)
      @team_name = team_name
    end

    def live_scrape
      url = "http://www.nba.com/#{team_name}/news"
      doc = Nokogiri::HTML(open(url))
      headlines_hash = {}

      headlines = doc.css('a.node_title.related-content__link.related-content__link--title')
      headlines.each do |headline|
        link = "http://www.nba.com" + headline.attribute("href").value
        headline = headline.children.text
        headlines_hash[headline] = link
      end
      render json: headlines_hash
    end
  end

  class NflScraper
    attr_reader :city, :team_name

    def initialize(city, team_name)
      @city = city
      @team_name = team_name
    end

    def live_scrape
      url = "http://www.#{city}#{team_name}.com/news/index.html"
      doc = Nokogiri::HTML(open(url))
      headlines_hash = {}
      doc.css('.content-type-club-article a').each do |headline|
        link = "http://www.#{city}#{team_name}.com" + headline.attribute("href").value
        title = headline.attribute("title").value
        headlines_hash[title] = link
      end
      render json: headlines_hash
    end
  end


end
