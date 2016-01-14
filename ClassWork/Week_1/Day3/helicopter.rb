class Helicopter
	attr_reader :wheels

  def initialize
    @wheels = 3
    @sound = "TuTuTuTu"
  end
end

class MotorCycle
	attr_reader :wheels

	def initialize
		@wheels = 2
		@sound = "Vroooom"
	end
end

class Car
	attr_reader :wheels

	def initialize
		@wheels = 4
		@sound = "Meow"
	end
end

class BatMobile
	attr_reader :wheels

	def initialize
		@wheels = 3
		@sound = "Danananananana BATMAN"
	end
end

class WheelCounter
  # Fill in the stuff
  def initialize
  	@vehicles = []
  end

  def add_vehicle(single_vehicle)
  	@vehicles.push(single_vehicle) 
  end

  def wheel_count
  	total_wheels = 0
  	@vehicles.each do | vehicle |
  		total_wheels += vehicle.wheels
  	end
  	total_wheels 
  end

  # def break_the_class
	# This works because its an instance variable
  # 	puts @vehicles
	#this doesn't, because it's not
  # 	total_wheels
  # end
end

#Created some vehicles of different types
chopper = Helicopter.new
tesla = Car.new
batmobile = BatMobile.new
ninja = MotorCycle.new
#Created our wheelcounter
counter = WheelCounter.new
#Add the vehicles to the counter
counter.add_vehicle(chopper)
counter.add_vehicle(tesla)
counter.add_vehicle(batmobile)
counter.add_vehicle(ninja)
#Call the count method to get the total
puts counter.wheel_count
# counter.break_the_class