module Adapter
  class NhlScraper
    attr_reader :team_name

    def initialize(team_name)
      @team_name = team_name.gsub(" ","")
    end

    def live_scrape
      url = "http://#{team_name}.nhl.com/club/newsindex.htm"
      doc = Nokogiri::HTML(open(url))
      headlines_array = []
      doc.css('.headlineViewTitle a').each do |headline|
        link = "http://#{team_name}.nhl.com" + headline.attribute("href").value
        headline = headline.children.text
        headlines_array << {headline: headline, link: link}
      end
      headlines_array
    end
  end

  class NbaScraper
    attr_reader :team_name

    def initialize(team_name)
      @team_name = team_name.gsub(" ","")
    end

    def live_scrape
      url = "http://www.nba.com/#{team_name}/news"
      doc = Nokogiri::HTML(open(url))
      headlines_array = []
      headlines = doc.css('.post__title a')
      headlines.each do |headline|
        link = "http://www.nba.com" + headline.attribute("href").value
        headline = headline.children.text
        headlines_array << {headline: headline, link: link}
      end
      headlines_array
    end
  end

  class NflScraper
    attr_reader :city, :team_name, :abbreviation

    def initialize(city, team_name, abbreviation)
      @city = city
      @team_name = team_name
      @abbreviation = abbreviation
    end

    def live_scrape
      url = "http://www.nfl.com/teams/#{city}#{team_name}/profile?team=#{abbreviation}"
      doc = Nokogiri::HTML(open(url))
      headlines_array = []
      doc.css('h4.headline a')[1..-1].each do |hl|
        link = "http://www.nfl.com" + hl.attribute("href").value
        headline = hl.children.text
        headlines_array << { headline: headline, link: link}
      end
      headlines_array
    end
  end


end
