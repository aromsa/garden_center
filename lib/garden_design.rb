class GardenDesign

    attr_accessor :style, :color, :customer_plants
    # attr_reader :customer_plants, md

    @@all = []

    def initialize(style, color, customer_plants)
        @style = style
        @color = color
        @customer_plants = customer_plants
        GardenDesign.all << self
    end

    def self.all
        @@all
    end
end
