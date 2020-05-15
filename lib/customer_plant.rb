class CustomerPlants < ActiveRecord::Base
  belongs_to :plant
  belongs_to :customer 
end
  # attr_accessor :plant, :customer, :favorite, :purchased
  
  # @@all = []

  # def initialize(hash)
  #   @plant = hash[:plant]
  #   @customer = hash[:customer]
  #   @favorite = hash[:favorite]
  #   @purchased = hash[:purchased]
  #   CustomerPlants.all << self
  # end

  # def self.all
  #   @@all
  # end





