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




end
