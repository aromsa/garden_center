require_relative '../config/environment.rb'

zz = Plant.new("ZZ Plant", "tropical")
phlox = Plant.new("Plox", "perennial")
pothos = Plant.new("Pothos", "ivy")
fig = Plant.new("Fig Tree", "woody")


gd1 = GardenDesign.new("urban garden", "fall-blooming perennials")
gd2 = GardenDesign.new("vertical garden", "white in the garden")
gd3 = GardenDesign.new("rustic garden", "lavender in the garden")

customer1 = Customer.new("Brad", gd1)
customer2 = Customer.new("Anitha", gd2)
customer3 = Customer.new("Casey", gd1)
customer4 = Customer.new("Max", gd3)

hash1 = {plant: zz, customer: customer1, favorite: true, purchased: true}
hash2 = {plant: phlox, customer: customer2, favorite: true, purchased: true}
hash3 = {plant: fig, customer: customer3, favorite: false, purchased: true}
hash4 = {plant: fig, customer: customer4, favorite: true, purchased: true}
hash5 = {plant: pothos, customer: customer2, favorite: true, purchased: true}
hash6 = {plant: fig, customer: customer4, favorite: true, purchased: true}
hash7 = {plant: pothos, customer: customer1, favorite: true, purchased: true}
hash8 = {plant: zz, customer: customer2, favorite: true, purchased: true}


cp1 = CustomerPlants.new(hash1)
cp2 = CustomerPlants.new(hash2)
cp3 = CustomerPlants.new(hash3)
cp4 = CustomerPlants.new(hash4)


binding.pry

0