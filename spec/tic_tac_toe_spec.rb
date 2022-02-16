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
  
  it 'when show_board is called,
   the explicit results in the terminal' do
    # Arrange
    board = described_class.new

    #Act
    test_grid = @grid

    # Assert
    expect{board.show_board}.to output(test_grid).to_stdout
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

  it "when player puts desired input from the command line save to variable name, move" do 
    # Arrange
    input = described_class.new

    # Act
    result = input.recieve_input

    # Assert
    expect(result).to eq("A")
  end
end