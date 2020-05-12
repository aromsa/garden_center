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

  def self.sort_by_type(type)
    Plant.all.select do |plant|
      plant.type == type
    end
  end

  def self.best_selling_plant
    #find total for each plant. 
    #return the plants name that has the largest total
    total = 0
    names_totals = {}
    CustomerPlants.all.each do |cp|
        cp.purchased == true 
        #if name is not in hash, add name
        binding.pry
        #have to total for each individual plant
        total += 1
    end
  end


  # def plant_name
  #   CustomerPlants.all.select do |cp|
  #     cp.plant
  #   end
  # end


end