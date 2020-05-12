class Api
  def self.get_breweries(city)

    url = "https://api.openbrewerydb.org/breweries?by_city=#{city}"

    response = Net::HTTP.get(URI(url))

    breweries = JSON.parse(response)

    breweries.each do |brewery_details|
      name = brewery_details
    end
  end

    def self.getBreweryDetails(brewery)




    end

end
