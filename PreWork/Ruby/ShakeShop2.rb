class MilkShake
  def initialize(base_price, ingredient,milkshake)
    @base_price = 3
    @ingredient = [ ]
    @milkshake = [ ]	
  end
  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end
  def add_milkshake ( )

  end 

def price_of_milkshake ( )

  total_price_of_milkshake = @base_price
  
  @ingredients.each do |ingredient|
    total_price_of_milkshake += ingredient.price
  end
 
   total_price_of_milkshake
end
end

class Ingredient
	  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end

 

banana = Ingredient.new(“Banana”, 2)
milkshake = MilkShake.new(“Chocolate”, 7)
nizars_milkshake = MilkShake.new
banana = Ingredient.new(“Banana”, 2)
chocolate_chips = Ingredient.new(“Chocolate Chips”, 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

puts nizars_milkshake.price_of_milkshake
