class Tic_tac_toe
  def initialize
    @grid = [['  A ', ' B ', ' C '], ['  D ', ' E ', ' F '], ['  G ', ' H ', ' I ']]
    @index_of_move
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