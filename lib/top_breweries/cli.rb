class Cli
  def run
    puts "  "
    puts "Hello -- Welcome to State-Brewery-Tours!"
    puts "  "
    puts "Please enter your full state name to see a listing of our select breweries in your home state:"
    puts "  "
    @state = gets.strip.capitalize
    Api.get_breweries(@state)

    print_breweries(Brewery.all)

    prompt_user
    input = gets.strip.downcase

    while input != "exit"

      if input == 'list'
        breweries = Brewery.select_by_state(@state)
        print_breweries(breweries)

      elsif input.to_i > 0 && input.to_i < Brewery.select_by_state(@state).length
        brewery = Brewery.select_by_state(@state)[input.to_i - 1]

        Api.getBreweryCity(@city)
        print_brewery(brewery)

      #elsif

      else
        puts "I do not understand - please try again."
      end

      prompt_user
      input = gets.strip.downcase
    end
    puts "  "
    puts "Thanks for using our app. Have a great day!"
  end

  def print_breweries(breweries)
    puts "  "
    puts "Here are some breweries in the great state of #{@state.capitalize}!"
    breweries.each.with_index(1) do |brewery, index|
      puts "#{index}. #{brewery.name}"
    end
    puts "  "
  end

  def print_brewery(brewery)
    puts "#{brewery.name}"
    puts "#{brewery.city}"
    puts "#{brewery.phone}"
    puts "#{brewery.website_url}"



  end

  def prompt_user
    puts " "
    puts "Select a number to see the city where a brewery is located --
    type 'list' to see the list again -- 'state' to select a new state --
    or 'exit' to exit."
    puts "  "
  end
end
