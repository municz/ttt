require 'test_helper'

class TestTicTacToe < MiniTest::Unit::TestCase

def setup
  @tttHorizontal = TicTacToe.new([["X", "X", "X"],
                                  ["O", "O", "_"],
                                  ["O", "_", "_"]])
  @tttDiagonal = TicTacToe.new([["X", "O", "_"],
                                ["O", "X", "O"],
                                ["_", "_", "X"]])
  @tttVertical = TicTacToe.new([["X", "O", "O"],
                                 ["X", "O", "_"],
                                 ["X", "_", "_"]])
  @tttNoWinner = TicTacToe.new([["X", "X", "_"],
                                ["_", "O", "X"],
                                ["O", "O", "_"]])
  @tttHorizontalO = TicTacToe.new([["O", "O", "O"],
                                   ["X", "X", "_"],
                                   ["X", "_", "_"]])
  @tttDiagonalO = TicTacToe.new([["O", "X", "_"],
                                 ["X", "O", "_"],
                                 ["X", "_", "O"]])
  @tttVerticalO = TicTacToe.new([["O", "X", "X"],
                                 ["O", "X", "_"],
                                 ["O", "_", "_"]])
end

def test_winner
  assert_equal "X", @tttVertical.winner
  assert_equal "X", @tttDiagonal.winner
  assert_equal "X", @tttHorizontal.winner
  assert_equal nil, @tttNoWinner.winner
  assert_equal "O", @tttVerticalO.winner
  assert_equal "O", @tttHorizontalO.winner
  assert_equal "O", @tttDiagonalO.winner
end

end
