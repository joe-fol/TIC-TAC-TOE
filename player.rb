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
    update_board(index)

  end
    
end
  




## random letter generator
  # def random_letter_generator
  #   random_letter = ('A'..'I').to_a.sample
    # print 'random_letter <<<<<< ' + random_letter
  #end