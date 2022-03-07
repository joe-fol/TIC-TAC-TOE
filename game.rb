require_relative './player.rb'
require_relative './board.rb'

class Game
    def initialize()
        @player = Player.new
        @board = Board.new
    end

    def start_game()
        @board.show_board
        @player.recieve_input
    end

    # Start game
    game = Game.new
    game.start_game
end