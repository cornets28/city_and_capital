class Country_capitals
    attr_accessor :name, :capital
    @@all = []

    def initialize(name, capital)
        @name = name
        @capital = capital
        
        @@all << self
    end
    
    def self.all
        @@all
    end
    
    def self.create
        doc2 = Scraper.get_page
        all_countries = doc2.css('#anyid tr:not([class^="sortbottom"])')
        # binding.pry
        all_countries.each do |c|

            if(!c.css("td").empty?)
                name1 = c.css("td").first.text
                capital1 = c.css("td")[1].text
                instance = Country_capitals.new(name1, capital1)
            end
        end
    end
    
    def self.list
        list = []

        self.all.each do |country|
            list << country.name
        end

        list.sort.each do |country_name|
             puts "#{country_name}" 
        end
        #binding.pry
    end
    
    def self.find_by_name(input)
        result = self.all.find{|country| country.name.downcase == input.downcase}
        # binding.pry
    end

    
end    

