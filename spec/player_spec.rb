#input
require_relative '../player'

describe Player do
	before(:each) do
		@player = Player.new
	end
	# TODO -- finish test
	it "when user gives input 'A' the correct value is stored to the variable move" do
			# Arrange
			# Act
			result = 'A'
			# Assert
			expect(result).to eq('A')
	end

	it 'when user input is received, value will be tested to be between A-I' do
		# Arrange
		# Act
		move = 'A' 
		result = @player.validate_input(move) 
		# Assert
		expect(result).to eq(true)
	end
	
	it 'when user input is received and value is not in the range A - I, throw error' do
			# Arrange
			# Act
			move = 'J' 
			result = @player.validate_input(move) 
			# Assert
			expect(result).to eq('this is an invalid input')
		end
	
	it 'after validation, take user input("A") and look up in board_hash' do
		# Arrange
		# Act
		result = @player.get_value('A')
		# Assert
      expect(result).to eq([0, 0])
	end

    it 'after validation, take user input("B") and look up in board_hash' do
		# Arrange
		# Act
		result = @player.get_value('B')
		# Assert
        expect(result).to eq([0, 1])
	end
    
	it 'after validation, take user input dynamically and look up in board_hash' do
		# Arrange
		# Act
		# move = random_method 
		# index = @board_hash[move]
		# result = @player.get_value(move)
		# # Assert
    #     expect(result).to eq(index)
	end

end
## looking up for key/value -> saving value 
## using value to update board -> showing board

    # it "when player chooses matrix position A, update matrix position with X" do
    #     # Arrange
    #     player = described_class.new

    #     # Act
    #     result = player.player_move('A')

    #     # Assert
    #     expect(result).to eq([['  X ', ' B ', ' C '], ['  D ', ' E ', ' F '], ['  G ', ' H ', ' I ']])
    # end

    # it "this looks for if a string has been inputed by the player" do 
    #     # Arrange
    #     input = described_class.new
        
    #     # Act
    #     result = input.validate_input
        
    #     input_value = true

    #     if result == ''
    #         input_value = false
    #     end

    #     # Assert
    #     expect(input_value).to eq(true)
    # end

 