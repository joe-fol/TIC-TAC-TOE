#output
require_relative '../board'

describe Board do
  it "will return unnocuppied positions before any moves played" do
      # Arrange
      board = described_class.new

      # Act
      result = board.show_board

      # Assert
      expect(result).to eq([['  A ', ' B ', ' C '], ['  D ', ' E ', ' F '], ['  G ', ' H ', ' I ']])
  end
  
  it 'will show unoccupied grid on the command line' do
    # Arrange
    board = described_class.new

    #Act
    test_grid = @grid

    # Assert
    expect{board.show_board}.to output(test_grid).to_stdout
  end
end

#Split into three classes 
# player.rb - one class handles player input 
# computer.rb - plays hands to win or tie
# board.rb - tic tac toe, keeping the logic of the board