class Cli
  def run
    puts " "
    puts "Hello! Welcome to TopBreweries!"
    puts " "
    puts "Please enter your city to see breweries in your area: "
    puts " "
    @city = gets.strip.downcase
    Api.get_breweries(@city)

    print_breweries(Brewery.all)

    prompt_user
    input = gets.strip.downcase

    while input != 'exit'
      if input == 'list'

      elsif input == 'city'

      elsif input == 'city'

      else
        puts "I do not understand - please try again."
      end
      prompt_user
      input = gets.strip.downcase
    end
     puts " "
     puts "Thanks for using TopBartenders! Enjoy your day!"
  end

  def print_breweries(breweries)
    puts " "
    puts "Here are the breweries located in #{@city.capitalize}: "
    breweries.each.with_index(1) do |brewery, index|
      puts "#{index}. #{brewery.name}"
    end
    puts " "
  end

  def prompt_user
    puts "Select a number to see more info -- type 'list'
    to see the list for #{@city} again -- 'city' to perform
    a new seach -- or 'exit' to exit."

  end

end
