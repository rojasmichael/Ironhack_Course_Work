class ShoppingCart
	def initialize
		@items = []
	def add_item(item)
		
		
	end
		
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
banana = Fruit.new("banana", 10)
orange juice = Fruit.new("orange juice", 10)
rice = Item.new("rice",1)
vacuum cleaner = Houseware.new("vacuum cleaner",150)
anchovies = Item.anchovies("anchovies",2)


