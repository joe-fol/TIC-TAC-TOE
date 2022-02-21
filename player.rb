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

  def validate_input(move)
    possible_moves = ('A'..'I').to_a
    if possible_moves.include? move 
      return true
    else
      return 'this is an invalid input'
    end
  end
    
end