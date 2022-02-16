class Tic_tac_toe
  def initialize
    @grid = [['  A ', ' B ', ' C '], ['  D ', ' E ', ' F '], ['  G ', ' H ', ' I ']]
  end

  def show_board
    @grid.each do | item | 
      puts item.each{ | item | item}.join("|")
      puts '------------'
    end 
  end
  
  def player_move
    players_board =[["X", 0, 0], [0, 0 , 0], [0, 0, 0]]
    return players_board
  end
end

x = Tic_tac_toe.new
# puts x.render_board