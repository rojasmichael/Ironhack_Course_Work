require_relative("lib/king.rb")

black_king = King.new(5, 8, "black")
black_rook = Rook.new( 1,8, "black")
black_rook = Rook.new (8,8, "balck")

white_king = King.new(8,1, "white")
white_rook = Rook.new(1,1, "white")
white_rook = Rook.new(8,1, "white")

puts "\nTesting the King"

#Good moves
p white_king.move?(6, 2)
p white_king.move?(5, 2)
p white_king.move?(4, 1)

#Bad Moves
p white_king.move?(7, 2)
p white_king.move?(1, 5)
p white_king.move?(1, 1)