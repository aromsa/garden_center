require_relative '../config/environment.rb'

zz = Plant.new("ZZ Plant", "tropical")
phlox = Plant.new("Plox", "perennial")
pothos = Plant.new("Pothos", "ivy")
fig = Plant.new("Fig Tree", "woody")

customer1 = Customer.new("Brad")
customer2 = Customer.new("Anitha")
customer3 = Customer.new("Casey")
customer4 = Customer.new("Max")

hash1 = {plant: zz, customer: customer1, favorite: true, purchased: true}
hash2 = {plant: phlox, customer: customer2, favorite: true, purchased: true}
hash3 = {plant: zz, customer: customer3, favorite: false, purchased: true}
hash4 = {plant: zz, customer: customer1, favorite: true, purchased: true}

cp1 = CustomerPlants.new(hash1)
cp2 = CustomerPlants.new(hash2)
cp3 = CustomerPlants.new(hash3)
cp4 = CustomerPlants.new(hash4)


binding.pry

0