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
  Home.new("Damian place""North Miami", 4, 225)
]

homes.each do | home |
	puts " #{home.name} place in #{home.city}\n price: #{home.price} per night"
end
puts "-----------------------------------"

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


puts "-----------------------------------"