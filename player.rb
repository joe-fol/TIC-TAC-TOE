class Player
    def player_move(position)
        proto_grid = [['  X ', ' B ', ' C '], ['  D ', ' E ', ' F '], ['  G ', ' H ', ' I ']] 
        return proto_grid
      end
    
      def recieve_input
        puts 'Please enter your move: '
        move = gets.chomp
        puts 'You have chosen '+ move + ''
        return move
      end

end