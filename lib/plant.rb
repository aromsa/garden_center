class Plant

  attr_accessor :name, :type

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
    #names_totals = {zz: , 3}
    plant_totals = {}
    CustomerPlants.all.each do |cp|
        if cp.purchased == true 
          #if name is not in hash, add name
          plant_totals[:cp.plant.name] ||= cp.plant.name
          if plant_totals[:cp.plant.name] += 1
          else plant_totals[cp.plant.name] = 1
            binding.pry
        #have to total for each individual plant
    end
    puts names_totals
  end
end

end