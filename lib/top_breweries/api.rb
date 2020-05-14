class Api
  def self.get_breweries(state)

    url = "https://api.openbrewerydb.org/breweries?by_state=#{state}"

    response = Net::HTTP.get(URI(url))
    breweries = JSON.parse(response)

    breweries.each do |brewery_details|
      name = brewery_details["name"]
      city = brewery_details["city"]
      state = brewery_details["state"]
      phone = brewery_details["phone"]
      website_url = brewery_details["website_url"]
      Brewery.new(name: name, city: city, state: state, phone: phone, website_url: website_url)
    end

  end


  def self.getBreweryCity(city)

    url = "https://api.openbrewerydb.org/breweries?by_city=#{city}"

    response = Net::HTTP.get(URI(url))
    brewery_array = JSON.parse(response).first

    brewery_array.each do |brewery_city|
     brewery_city = brewery_array[@city]


   end
  end
end
