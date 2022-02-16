class Tic_tac_toe
  def initialize
    @grid = [['  A ', ' B ', ' C '], ['  D ', ' E ', ' F '], ['  G ', ' H ', ' I ']]
    @index_of_move
    @board_hash = {
      "A" => [0, 0],
      "B" => [0, 1],
      "C" => [0, 2],
      "D" => [1, 0],
      "E" => [1, 1],
      "F" => [1, 2],
      "G" => [2, 0],
      "H" => [2, 1],
      "I" => [2, 2]
    }
  end

  def show_board
    @grid.each do | item | 
      puts item.each{ | item | item}.join("|")
      puts '------------'
    end 
  end
  
  def player_move
    proto_grid = [['  X ', ' B ', ' C '], ['  D ', ' E ', ' F '], ['  G ', ' H ', ' I ']] 
    return proto_grid
  end
end

x = Tic_tac_toe.new
# puts x.render_board