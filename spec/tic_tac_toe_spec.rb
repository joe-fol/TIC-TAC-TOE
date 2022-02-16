require_relative '../tic_tac_toe'

describe Tic_tac_toe do
  it "when called display board" do
      # Arrange
      board = described_class.new

      # Act
      result = board.show_board

      # Assert
      expect(result).to eq([['A', 'B', 'C'], ['D', 'E' , 'F'], ['G', 'H', 'I']])
  end

  it "when player chooses matrix position A1, update matrix position with X" do
      # Arrange
      board = described_class.new

      # Act
      result = board.player_move

      # Assert
      expect(result).to eq([["X", 0, 0],
                            [0, 0, 0],
                            [0, 0, 0]]
                            )
  end

  it "when show_board is called before any turns are played" do 
    
    # Arrange
    board = described_class.new

    # Act
    result = board.show_board

    # Assert
    expect(result).to eq([[0, 0, 0],
    [0, 0, 0],
    [0, 0, 0]])
  end

# #  it "" do
# #    player_positions = {
# #      "A1" => [0, 0],
# #      "A2" => [0, 1],
# #      "A3" => [0, 2]
#     }
# #  end
end