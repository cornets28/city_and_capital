class CityCapitals::CLI
    def call
        reset
        sleep(1)
        puts "Welcome to my city program!\n".bg_green.black
        puts "Enter 'list' or 'exit':".green
            
        input = nil
        until input =='exit'
            input = gets.strip
            if (input != 'list' && input != 'exit') 
                message
            end 
            case input
            when 'list'
                puts "\nThis our list of our countries for now:\n".green 
                Country_capitals.create
                Country_capitals.list
                one_city_output
                one_more_city_entry
            when 'exit'
                reset
                exit_program
                
            end
        end     
    end

    def exit_program
        puts "Goodbye!!!".bold
        exit
    end
    
    def message
        puts "You have entered a wrong value!!".red
        puts "Try again:".green 
    end
        
    def one_city
        input = gets.strip 
        Country_capitals.find_by_name(input)
    end

    def city_message
        message
        one_city
    end

    def one_city_output
        puts "\nWhich country you would like to see the city of?".green
        input = gets.strip
        @country = Country_capitals.find_by_name(input)

        while @country == nil
            @country = city_message
        end
        puts "\nThe capital of #{@country.name} is #{@country.capital}.".green
    end

    def one_more_city_entry
        puts "\nDo you want to try for another city?".cyan
        puts"'please, enter: yes' or 'no'!".green
      
        if user_input == 'yes' 
          
            one_city_output
            one_more_city_entry
        else 
            reset
            exit_program
        end
    end

    def user_input
        input = gets.strip
    end

    def reset
        system("clear")
    end
end