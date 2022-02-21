#input
require_relative '../player'

describe Player do
    it "when user gives input 'A' the correct value is stored to the variable move" do
        # Arrange
        player = described_class.new
        # Act
        result = player.recieve_input
        # Assert
        expect(result).to eq('A')
    end

    it 'when user input is received, value will be tested to be between A-I' do
      # Arrange
      player = described_class.new
      # Act
      move = player.recieve_input
      result = player.validate_input(move) 
      # Assert
      expect(result).to eq(true)
    end
    
    it 'when user input is received and value is not in the range A - I, throw error' do
        # Arrange
        player = described_class.new
        # Act
        move = player.recieve_input
        result = player.validate_input(move) 
        # Assert
        expect(result).to eq('this is an invalid input')
      end
    
      it 'when user input is received and value is not in the range A - I, throw error' do
        # Arrange
        
        # Act
        
        # Assert
    
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

 