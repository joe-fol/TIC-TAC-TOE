require_relative './board'
class Game
  def initialize
    @board = Board.new
  end

  def start_game
    @board.show_board

  end
end