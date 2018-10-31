class Scraper
    def self.get_page
        html2 = Nokogiri::HTML(open("https://geographyfieldwork.com/WorldCapitalCities.htm"))
    end
end  

