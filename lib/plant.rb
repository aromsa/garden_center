class Plant

  attr_accessor :name, :type
  # attr_reader :name, md

  @@all = []

  def initialize(name, type)#better not to just "type" as an instance,Md
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
    plant_totals = {}
    CustomerPlants.all.each do |cp|
      name = cp.plant.name
        if cp.purchased == true
          # I found this ||= on the internet and I've read about it but
          # I'd love to learn more.  If you could touch on this in lecture
          # I would really appreciate it! I think it means "or"?
          plant_totals[name] ||= 0
          plant_totals[name] += 1
        end
      end
      #Also found this on the internet 
      #(https://stackoverflow.com/questions/6040494/how-to-find-the-key-of-the-largest-value-hash)
      #Still lot entirely sure what it does. 
      plant_totals.invert.max&.last
  end
end
