class CustomerPlants
  
  attr_accessor :plant, :customer, :favorite, :purchased
  
  @@all = []

  def initialize(hash)
    @plant = hash[:plant]
    @customer = hash[:customer]
    @favorite = hash[:favorite]
    @purchased = hash[:purchased]
    CustomerPlants.all << self
  end

  def self.all
    @@all
  end



end



