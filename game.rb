class Game
  def initialize(win_checker)
    @board = [ [nil,nil,nil],[nil,nil,nil],[nil,nil,nil] ]
    @pieces = [:o, :x]
    @turn = 0
    @win_checker = win_checker
  end

  def display_board
    rows_as_string = @board.map do |row| row_to_string(row)
    end
  rows_as_string.join("\n_ _ _\n")
  end

def place_piece(row, column)
  if row > 2 || column > 2 
    puts "Values between 0 and 2 only"
    return
  end
  # if column => 2 puts "Values between 0 and 2 only"
  if @board[row][column]
    puts "Already a piece there"
    return #This is returning the if. It returns early rather than at the end
  end
  @board[ row ][column] = @pieces[ @turn % 2 ]
  @win_checker.has_won?(current_piece, @board)
  @turn = @turn + 1
  puts display_board

end

def current_piece
  @pieces [@turn % 2 ]
end

def check_for_win
  if @win_checker.has_won?(current_piece, @board)
    puts "winner is #{current_piece}"
    new_game
  end
end

def reset()
  @board = [ [nil,nil,nil],[nil,nil,nil],[nil,nil,nil] ]
  @turn = 0
  @pieces.rotate!
end

def auto_reset
  if @turn == 8 
    puts "Full board play again"
    reset
  end
end

 private 

   def row_to_string(row)
     row_symbols = row.map do |piece| piece || " "
     end
     row_symbols.join("|")
   end

end
