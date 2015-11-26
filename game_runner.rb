require('pry-byebug')
require_relative('./game')
require_relative('win_checker')
# create game
win_checker_1 = WinChecker.new()
game = Game.new(win_checker_1)

# # binding.pry;''
# # piece = :o
# # game.place_piece(0,0)
# # game.place_piece(0,1)
# # game.place_piece(1,0)
# # game.place_piece(0,2)
# # game.place_piece(2,0)
# # puts "Checking for a win: #{game.has_won?(piece)}"

# #place piece
# game.place_piece(0,0)
# #display board
# puts game.display_board
# #test displaying row
# # puts "test row #{game.row_to_string([:o, nil, nil])}"
# game.reset()

# # TODO Don't allow putting pieces out of range
# # TODO rotate starting piece when resetting

# game.auto_reset
# # TODO automatically reset when the board is full and tell us it's a draw

# #TODO automatically detect when someone has won and notify.
# piece = :o
# puts "1. checking if game is won #{game.has_won?(piece)} expect to be false"
# game.place_piece(0,0)
# game.place_piece(0,1)
# game.place_piece(0,1)
# game.place_piece(0,2)
# puts game.display_board
# puts "2. checking if game is won #{game.has_won?(piece)} expect to be false"
# game.reset

piece = :x

game.place_piece(0,0)
game.place_piece(0,1)
game.place_piece(1,0)
game.place_piece(0,2)
game.place_piece(2,0)
puts game.display_board
game.reset

# piece = :o
# puts "5. checking if game is won #{game.has_won?(piece)} expect to be false"
# game.place_piece(0,0)
# game.place_piece(0,1)
# game.place_piece(1,1)
# game.place_piece(0,2)
# game.place_piece(2,2)
# puts game.display_board
# puts "6. checking if game is won diagonal #{game.has_won?(piece)} expect to be true"

binding.pry;''