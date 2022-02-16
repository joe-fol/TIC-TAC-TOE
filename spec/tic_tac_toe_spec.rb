require_relative '../tic_tac_toe'

describe Tic_tac_toe do
  it "when show_board is called before any moves played" do
      # Arrange
      board = described_class.new

      # Act
      result = board.show_board

      # Assert
      expect(result).to eq([['  A ', ' B ', ' C '], ['  D ', ' E ', ' F '], ['  G ', ' H ', ' I ']])
  end

  it "when player chooses matrix position A1, update matrix position with X" do
      # Arrange
      board = described_class.new

      # Act
      result = board.player_move

      # Assert
      expect(result).to eq([['  X ', ' B ', ' C '], ['  D ', ' E ', ' F '], ['  G ', ' H ', ' I ']]
                            )
  end


end