class Customer

  attr_accessor :name, :garden_design
  # attr_reader :name, md
  
  @@all = []
  
  def initialize(name, garden_design)
    @name = name
    @garden_design = garden_design
    Customer.all << self
  end

  def self.all
    @@all
  end

  def add_garden_design(style, color)
    GardenDesign.new(style, color)
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
    #This is not working yet
    plants.select do |p|
      p.favorite == true
      binding.pry 
    end
  end

  # def method_name
    
  # end
  
end

