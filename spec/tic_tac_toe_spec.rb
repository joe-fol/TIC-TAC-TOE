require_relative '../tic_tac_toe'

describe Tic_tac_toe do
  it "" do
      # Arrange
      board = described_class.new

      # Act
      result = board.render_board(1)

      # Assert
      expect(result).to eq([[0, 0, 0], [0, 0 , 0], [0, 0, 0]])
  end
end