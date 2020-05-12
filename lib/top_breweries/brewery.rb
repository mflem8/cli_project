class Brewery

  attr_accessor :name, :street, :city, :phone, :website_url

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self

  end

  def self.all
    @@all
  end

  #def self.find_by_city(city)
    #self.all.select {|brewery| brewery.city == city}
  #end



end
