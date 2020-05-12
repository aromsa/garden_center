class Customer

  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    Customer.all << self
  end

  def self.all
    @@all
  end

  def add_favorite_plant(plant)
      arguments_hash = {plant: plant, customer: self, favorite: true, purchased: false}
      CustomerPlants.new(arguments_hash)
  end

  def add_purchased_plant(plant)
    arguments_hash = {plant: plant, customer: self, favorite: false, purchased: true}
    CustomerPlants.new(arguments_hash)
  end

  def plants
    CustomerPlants.all.select do |cp|
      cp.customer == self
    end
  end

  def favorite_plants
    #return list of unique names of favorite plants.
    plants.select do |plant|
      plant.favorite == true
      
    end
  end

end

