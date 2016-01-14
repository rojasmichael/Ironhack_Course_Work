class Car

	# attr_reader :color, :make - allows you to read

	#same as 
	# def color
	# 	puts @ color
	# end

	# attr_writer: color     
	#same as below item - changes the old vaule for the new one

	# def color =(new_color)
	# 	@color = new_color
	# end

	#attr_accessor :color, :make  - does both writer and reader

	def initialize(color, make, noise)
		@color = color
		@make = make
		@noise = noise
	end
	
	def rev
		
		puts @noise

	end
end
