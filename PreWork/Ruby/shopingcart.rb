class ShoppingCart
	def initialize
		@items = []
	end 
	def add_item(item)
		@items.push(item)
	end
	def checkout (items)
		items.each do 
		
	end
		
end

	class Item
		def initialize(name, price)
			@name = name
			@price = price
			
		end
		def price
			@price	
			
		end

	end

class Houseware < item
	def price
		if price >= 100 
			@price -(@price * .05)
		else
			@price
		end 


	end

	class Fruit < item
		def price
		
			if today.staurday? || today.sunday?
				@price -(@price * .10)
			else
				@price
			end

		end
	end


joshs_cart = ShoppingCart.new
banana = Fruit.new("Banana", 10)
vaccuum = Houseware.new("Vaccuum", 150)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)

joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.checkout




