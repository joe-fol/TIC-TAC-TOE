class Board
  attr_accessor :grid
  def initialize
    @grid = [['  A ', ' B ', ' C '], ['  D ', ' E ', ' F '], ['  G ', ' H ', ' I ']]
  end

  def show_board
    @grid.each do | item | 
      puts item.each{ | item | item}.join("|")
      puts '------------'
    end 
  end

  def update_board(move)
    @grid[move[0]][move[1]] = '  X '
    @grid
  end

  

end




## show_board to show new game
## update board will take input 


#def update_board(move)
  # value = @player.get_value()
  # puts value
  # @grid[index[0][index[1]]] = "X"