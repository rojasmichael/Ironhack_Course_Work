class MilkShake
	def initialize
		@base_price = 3
		@ingredients = []

	end
	def price_of_milkshake
		total_price_of_milkshake = @base_price
		@ingredients.each do | ingredients |
			total_price_of_milkshake += ingredients.price
		end 
		total_price_of_milkshake
	end

	def add_ingredient(ingredient)
		@ingredients.push(ingredient)
	end 
end 
class Ingredient
	attr_reader :name, :price 
  def initialize(name, price)
    @name = name
    @price = price

  end
end
	
	
nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

puts nizars_milkshake.price_of_milkshake
