class Cli
  def run
    puts " "
    puts "Hello! Welcome to TopBreweries!"
    puts " "
    puts "Please enter your city to see breweries in your area: "
    puts " "
    @city = gets.strip.downcase
    Api.get_breweries(@city)

    print_drinks(Brewery.all)
  end

  def print_drinks(breweries)
    puts " "
    puts "Here are the breweries located in #{@city.capitalize}: "
    puts " "
  end


end
