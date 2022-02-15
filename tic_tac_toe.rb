class Tic_tac_toe
  def show_board
    board_matrix = [["A1", "A2", "A3"], ["B1", "B2", "B3"], ["C1", "C2", "C3"]]
    # TODO finish of the method  
  end
  
  def player_move
    players_board =[["X", 0, 0], [0, 0 , 0], [0, 0, 0]]
    return players_board
  end
end

x = Tic_tac_toe.new
puts x.render_board