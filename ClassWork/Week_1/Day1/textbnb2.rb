
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
  Home.new("Damian place","North Miami", 4, 225)
]

def array_printer(array_of_homes)
	array_of_homes.each do | home |
		puts "#{home.name} in #{home.city} has #{home.capacity} rooms"
		puts "#{home.price}"
	end 
end

puts "How do you want to sort your homes? HTL ( Highest to Lowest Price), LTH (Lowest to Highest Price), CAP (For capacity)"
user_input = gets.chomp

if user_input == "HTL"
	hightest_to_lowest = homes.sort { | home_a, home_b | home_b.price <=> home_a.price}
	array_printer(hightest_to_lowest)

elsif user_input == "LTH"
	lowest_to_highest = homes.sort { | home_a, home_b | home_a.price <=> home_b.price}
	array_printer(lowest_to_highest)
elsif user_input == "CAP"
	hightest_to_lowest = homes.sort { | home_a, home_b | home_a.capacity <=> home_b.capacity
	}
	array_printer(hightest_to_lowest)
		
end


