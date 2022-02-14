require_relative '../tic_tac_toe'

describe Tic_tac_toe do
  it "when called display board" do
      # Arrange
      board = described_class.new

      # Act
      result = board.render_board

      # Assert
      expect(result).to eq([[0, 0, 0], [0, 0 , 0], [0, 0, 0]])
  end

  it "when player chooses matrix position A1, update matrix position with X" do
      # Arrange
      board = described_class.new

      # Act
      result = board.player_move

      # Assert
      expect(result).to eq([["X", 0, 0], [0, 0 , 0], [0, 0, 0]])
  end
end