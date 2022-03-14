require_relative './board'
class Player
  def initialize
    @board = Board.new

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
    player_move = @board_hash[move]
    @board.update_board(player_move)
  end

    
end



# test.Player.new
# puts test.get_value('A')
  




## random letter generator
  # def random_letter_generator
  #   random_letter = ('A'..'I').to_a.sample
    # print 'random_letter <<<<<< ' + random_letter
  #end

# class Main
#   bar = Bar.new
#   foo = Foo.new

#   value = bar.get_value
#   foo.do_something(value)
# end

# class Foo
#   def initialize(bar)
#     @bar = bar
#   end

#   def talk_to_bar
#     @bar.talk_to_me!
#   end

#   def talk_to_me!; end
#   end

# class Bar
#   def talk_to_foo
#   end

#   def talk_to_me!
#     return that_useful_data_you_wanted
#   end
# end
