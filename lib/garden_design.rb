class GardenDesign

    attr_accessor :style, :color

    @@all = []

    def initialize(style, color)
        @style = style
        @color = color
        GardenDesign.all << self
    end

    def self.all
        @@all
    end

    def customers
        Customer.all.select { |c| c.garden_design == self}
    end

    def customer_plants
        CustomerPlants.all.select { |c| c.customer}
    end

    def plants
        customer_plants.map { |c| c.plant}
    end

end
