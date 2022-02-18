#input
require_relative '../player'

describe Player do
    it "when player chooses matrix position A, update matrix position with X" do
        # Arrange
        player = described_class.new

        # Act
        result = player.player_move('A')

        # Assert
        expect(result).to eq([['  X ', ' B ', ' C '], ['  D ', ' E ', ' F '], ['  G ', ' H ', ' I ']])
    end
    
    it "this looks for if a string has been inputed by the player" do 
        # Arrange
        input = described_class.new
        
        # Act
        result = input.validate_input
        
        input_value = true

        if result == ''
            input_value = false
        end

        # Assert
        expect(input_value).to eq(true)
    end

 
     

end
## recieve input
## saving input 
## looking up for key/value -> saving value 
## using value to update board -> showing board