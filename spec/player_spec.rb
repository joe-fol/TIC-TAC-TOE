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
    
    it "when player puts desired input from the command line save to variable name, move" do 
        # Arrange
        input = described_class.new
        
        # Act
        result = input.recieve_input
        
        # Assert
        expect(result).to eq("A")
    end

end