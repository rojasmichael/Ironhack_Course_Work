class Room
	attr_reader :exit

	def initialize( description, exit)
		@description = description
		@exit = exit 

	end
	
	def display_description
		puts @description

	end


end


# Each Room has a message and 1 correct message'


Rooms = []