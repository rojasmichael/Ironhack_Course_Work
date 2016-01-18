 class Pawn
 	attr_reader: 
 	def initialize(pos_x, pos_y, color, move)
		@pos_x = pos_x
		@pos_y = pos_y
		@color = color
		@move = move

	end

	def move? (dst_x, dst_y)
	
		dx = (dst_x - @pos_x)
		dy = (dst_y - @pos_y)
		

		if @color == "black"
			dy == -1 || -2
		else @color == "white"
			dy == +1 || +2

			if @move == false 
				dy == 2 && dx == 0
				else
					dy == 1 && dx == 0


				if (dx == 0 && (dy == 1 || dy == 2))
					true

					else 
					false
				end 
			end 

		end

				
	end 











 end
