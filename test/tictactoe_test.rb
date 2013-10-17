require 'test_helper'

describe TicTacToe do

  it "test1" do
    ttt = TicTacToe.new([["X", "X", "X"],
                         ["O", "O", "_"],
                         ["O", "_","_"]])
    ttt.winner.must_equal "X"
  end
  it "test2" do
    ttt = TicTacToe.new([["O", "X", "X"],
                         ["O", "O", "_"],
                         ["O", "_","_"]])
    ttt.winner.must_equal "O"
  end
  it "test3" do
    ttt = TicTacToe.new([["O", "X", "X"],
                         ["O", "O", "_"],
                         ["X", "_","O"]])
    ttt.winner.must_equal "O"
  end
  it "test3" do
    ttt = TicTacToe.new([["X", "O", "X"],
                         ["O", "X", "_"],
                         ["X", "_","X"]])
    ttt.winner.must_equal "X"
  end
end