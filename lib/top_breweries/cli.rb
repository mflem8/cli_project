class Cli
  def run
    puts " "
    puts "Hello and welcome to TopBreweries!"
    puts " "
    puts "Enter your city to see the breweries in your area:"
    puts " "
    @city = gets.strip.downcase
    Api.get_breweries(@city)

  end

end
