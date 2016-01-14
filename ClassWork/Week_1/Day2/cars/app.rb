require_relative("lib/car.rb")
require_relative("lib/flying_car.rb")
require_relative("lib/invisible_car.rb")
# my_car = Car.new
# my_car.rev
faye_the_fit = Car.new("grey", "Honda", "Brooom")
bella_the_cooper = Car.new("red", "Mini", "Vrooom")
matts_mazda = Car.new("red", "Mazda", "Zaaaap")


faye_the_fit.rev
bella_the_cooper.rev
matts_mazda.rev

my_flying_car = FlyingCar.new("blue", "Tesla", "swoosh ")
my_flying_car.rev
my_flying_car.fly

my_invisible_car = InvisibleCar.new("camo", "Ford", "prrrrrt")
my_invisible_car.rev