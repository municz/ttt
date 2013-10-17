require 'test_helper'
require 'minitest/autorun'

describe TicTacToe do

  it "must find diagonal winner" do
    tictactoe = TicTacToe.new([["X", "O", "O"],
                               ["X", "O", "-"],
                               ["O", "-", "X"]])
    tictactoe.winner.must_equal "O"
  end

  describe "O wins horizontally" do
    subject do
      TicTacToe.new([["O", "O", "O"],
                     ["X", "X", "-"],
                     ["X", "-", "-"]])
    end
    it "O must be winner" do
      subject.winner.must_equal "O"
    end
  end
 
  it "must find column winner" do
    tictactoe = TicTacToe.new([["0", "0", "X"],
                               ["-", "-", "X"],
                               ["-", "O", "X"]])
    tictactoe.winner.must_equal "X"
  end

  it "wont find winner if there is none" do
    tictactoe = TicTacToe.new([["0", "X", "0"],
                               ["X", "X", "0"],
                               ["0", "0", "X"]])
    tictactoe.winner.must_be_nil
  end

end
