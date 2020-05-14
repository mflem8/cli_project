class Brewery

  attr_accessor :name, :city, :state, :phone, :website_url

  @@all = []

  def initialize(name:, city:, state:, phone:, website_url:)
    @name = name
    @city = city
    @state = state
    @phone = phone
    @website_url = website_url

    @@all << self
  end

  def self.all
    @@all
  end

  def self.select_by_state(state)
    self.all.select {|brewery| brewery.state == state}

  end



end
