class Brewery

  attr_accessor :name, :street, :city, :phone, :website_url

  @@all = []

  def initialize(name:, street:)
    @name = name
    @street = street
    @@all << self
  end

  def self.all
    @@all
  end

end
