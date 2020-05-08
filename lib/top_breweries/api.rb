class Api
  def self.get_breweries(city)

    url = "https://api.openbrewerydb.org/breweries?by_city=#{city}"

    response = Net::HTTP.get(URI(url))

    breweries = JSON.parse(response)

    breweries.each do |brewery_info|
      Brewery.new(name: name)
    end

  end
end
