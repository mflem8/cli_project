class Api
  def self.get_breweries(city)
    url = "https://api.openbrewerydb.org/breweries?by_city=#{city}"
    response = Net::HTTP.get(URI(url))
    breweries = JSON.parse(response)[0]
    binding.pry
  end
end
