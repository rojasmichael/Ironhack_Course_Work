#lib/invisible_car.rb
class InvisibleCar < Car
	def rev
		puts "Cloaking activated #{@color} #{@make}"
		#puts @noise

		#Car's rev method instead of puts @noise - you can use super
		super
	end
end