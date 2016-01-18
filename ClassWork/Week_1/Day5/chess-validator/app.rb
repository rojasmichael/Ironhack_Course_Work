require_relative("lib/king.rb")
require_relative("lib/rook.rb")
require_relative("lib/Bishop.rb")
require_relative("lib/knight.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")

black_king = King.new(5, 8, "black")

black_rook = Rook.new( 8,8, "black")
black_rook2 = Rook.new(1, 8, "black")

black_bishop = Bishop.new(3,8, "black")
black_bishop2 = Bishop.new(6,8, "black")

black_knight = Knight.new(2,8, "black")
black_knight2 = Knight.new(7,8, "black")

black_queen = Queen.new(4,8, "black")


white_king = King.new(5,1, "white")

white_rook = Rook.new(1,1, "white")
white_rook2 = Rook.new(8,1, "white")

white_bishop= Bishop.new(3,1,"white")
white_bishop2= Bishop.new(6,1,"white")

white_knight = Knight.new(2,1, "white")
white_knight2 = Knight.new(7,1, "white")

white_queen = Queen.new(4,1, "white")

white_pawn = Pawn.new(1,0,"white", false)

(0...8).each do |x|
@board[x,1] = Pawn.new( :black, :pawn )
@board[x,6] = Pawn.new( :white, :pawn )
        end

pieces = [[], ]
my_board = Board.new(pieces)


puts "\nTesting the King"

#Good moves
p white_king.move?(6, 2)
p white_king.move?(5, 2)
p white_king.move?(4, 1)

#Bad Moves
p white_king.move?(7, 2)
p white_king.move?(1, 5)
p white_king.move?(1, 1)


p white_pawn.move?(2,0)
