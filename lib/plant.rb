class Plant

  attr_reader :name, :type

  @@all = []

  def initialize(name, type)
    @name = name
    @type = type
    Plant.all << self
  end

  def self.all
    @@all
  end

  def sort_by_type(type)
    Plant.all.select do |plant|
      plant.type == type
  end

  def best_selling_plant(plant)
    #find total for each plant. 
    #return the plants name that has the largest total
    total = 0
    CustomerPlants.all.each do |cp|
      if cp.purchased == true 
        #have to total for each individual plant
        total += 1
      end
    end
  end


  # def plant_name
  #   CustomerPlants.all.select do |cp|
  #     cp.plant
  #   end
  # end


end