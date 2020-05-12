class Api
  def self.get_breweries(city)

    url = "https://api.openbrewerydb.org/breweries?by_city=#{city}"

    response = Net::HTTP.get(URI(url))
    brewery_array = JSON.parse(response)

    brewery_array.each do |brewery_details, name|
      name = brewery_details["name"]
      street = brewery_details["street"]
      Brewery.new(name: brewery_details["name"], street: brewery_details["street"])
    end

  end
end
