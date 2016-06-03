module Scraper
  class EspnScraper
    def scrape_espn(league)
      url = "http://espn.go.com/#{league}"
      doc = Nokogiri::HTML(open(url))
      headlines = {}

      doc.css('.headlines ul li a').each do |headline|
        link = url + headline.attribute('href').value
        title = headline.text
        headlines[title] = link
      end
      headlines
    end
  end
end
