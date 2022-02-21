class Player
  def initialize
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
      'this is an invalid input'
    end
  end

  def get_value(move)
      index = @board_hash[move]
    end
    
end