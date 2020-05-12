class CustomerPlants
  
  attr_accessor :plant, :customer, :favorite, :purchased
  
  @@all = []

  def initialize(hash)
    @plant = hash[:plant]
    @customer = hash[:customer]
    #how do I set favorite and purchased to a boolean?
    @favorite = hash[:favorite]
    @purchased = hash[:purchased]
    CustomerPlants.all << self
  end

  def self.all
    @@all
  end

end



