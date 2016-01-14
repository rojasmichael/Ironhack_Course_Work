class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Mikes place", "Miami", 3, 50),
  Home.new("Andrea place", "Fort Laud", 4, 100),
  Home.new("Faraz place", "Davie", 4, 200),
  Home.new("Nates place", "Coral Gables", 3, 120),
  Home.new("Damian place","Miami", 4, 225)
]


# 	homes.each do | home |
# 	puts " #{home.name} place in #{home.city}\n price: #{home.price} per night"
# 	end
# puts "-----------------------------------"



# # home sorting lowest to highest
# def home_sorting_low(homes)
#  	sorted_home = homes.sort do |place1,place2| 
#  		place1.price<=>place2.price
#  	end 
# end 
# home_sorting_low(homes).each do | home |
# puts " #{home.name} place in #{home.city}\n price: #{home.price} per night"
# end 

# puts "---------------------------------------------"
# # home sorting highest to lowest
# def home_sorting_high(homes)
#  	sorted_home = homes.sort do |place1,place2| 
#  		place2.price<=>place1.price
#  	end 
# end 
# home_sorting_high(homes).each do | home |
# puts " #{home.name} place in #{home.city}\n price: #{home.price} per night"
# end 



def array_printer(array_of_homes)
	array_of_homes.each do | home |
		puts "#{home.name} in #{home.city} has #{home.capacity} rooms"
		puts "#{home.price}"
	end 
end

puts "---------------------------------------------"

	puts "How would you like to see your options?"
	puts "Press HL for Highest to lowest"
	puts "Press LH for Lowest to Highest"
	puts "Press CL to see homes with capacity Lowest to Highest"
	puts "Enter your city name to show homes from that city"
	puts " Name your own price by imputing your price and price average"
	
	user_input = gets.chomp

if user_input == "HL"
	home_sorting_low = homes.sort do |place1,place2| 
		place2.price <=> place1.price
	end 
	 
	array_printer(home_sorting_low)

elsif user_input == "LH"
			def home_sorting_high(homes)
		 	sorted_home = homes.sort do |place1,place2| 
		 		place1.price <=> place2.price
		 		end 
		 	end 
			array_printer(home_sorting_high(homes))
			
	elsif user_input == "CL"

			def home_capity(homes)

				home_capity1 = homes.sort do | place1, place2|
					place1.capacity <=> place2.capacity
				end
			end
			array_printer(home_capity(homes))
						
	elsif user_input == "Miami"
	
		selected_city = homes.select do |hm|
 
  		hm.city == user_input
		end 
		array_printer(selected_city)

	elsif user_input == "100"
	some_number_find = homes.select do |hm|
 	hm.price == user_input.to_i
	end
	array_printer(some_number_find)
end 





#Josh 
	



	
	




# homes.each do |hm|
#   puts hm.name + "place in"
#   puts hm.city + "Price: "
#   puts hm.price.to_s + " a night"
# end

# puts "-----------------------------------"

# cities = []
# sum = 0 
# cities = homes.map  do |hm|
#   sum = sum + hm.price
# end

# puts sum / cities.length 


# total_capacities = 0.0

# puts "-----------------------------------"

# homes.each do |hm|
#   total_capacities = total_capacities + hm.capacity
# end

# puts "The average capacity is:"
# puts total_capacities / homes.length

# puts "-----------------------------------"

# total_capacities = homes.reduce(0.0) do |sum, hm|
#   sum + hm.capacity
# end

# puts "The average capacity is:"
# puts total_capacities / homes.length


# puts "-----------------------------------"


# homes.each_with_index do |hm, index|
#   puts "Home Number #{index + 1}: #{hm.name}"
# end


# puts "-----------------------------------"