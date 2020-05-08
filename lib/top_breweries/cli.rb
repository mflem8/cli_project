class Cli
  def run
    puts " "
    puts "Hello and welcome to TopBreweries!"
    puts " "
    puts "Enter your city to see the breweries in your area:"
    puts " "
    @city = gets.strip.downcase
    Api.get_breweries(@city)

    print_breweries(Brewery.all)

  end

  def print_breweries(city)
    puts " "
    puts "Here are the breweries in your area #{@city}"
    breweries.each.with_index(1) do |brewery, index|
      puts "#{index}. #{brewery.name}"
    end
    puts " "
  end

end
