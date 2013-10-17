require 'test_helper'

describe TicTacToe do 

	describe "there are X vertically" do
      it "must say winner is X" do
        ttt = TicTacToe.new([["X", "X", "X"],
                     		["O", "O", "_"],
                     		["O", "_","_"]])

        ttt.winner.must_equal "X"
      end
    end

    describe "there are X horizontally" do
      it "must say winner is X" do
        ttt = TicTacToe.new([["X", "O", "_"],
                     		["X", "O", "O"],
                     		["X", "_","_"]])

        ttt.winner.must_equal "X"
      end
    end

    describe "there are X diagonally" do
      it "must say winner is X" do
        ttt = TicTacToe.new([["X", "O", "_"],
                     		["O", "X", "_"],
                     		["O", "_","X"]])

        ttt.winner.must_equal "X"
      end
    end

    describe "there are O vertically" do
      it "must say winner is O" do
        ttt = TicTacToe.new([["O", "O", "O"],
                     		["X", "X", "_"],
                     		["X", "_","_"]])

        ttt.winner.must_equal "O"
      end
    end

    describe "there are O horizontally" do
      it "must say winner is O" do
        ttt = TicTacToe.new([["O", "X", "_"],
                     		["O", "X", "X"],
                     		["O", "_","_"]])

        ttt.winner.must_equal "O"
      end
    end

    describe "there are O diagonally" do
      it "must say winner is O" do
        ttt = TicTacToe.new([["O", "X", "_"],
                     		["X", "O", "_"],
                     		["X", "_","O"]])

        ttt.winner.must_equal "O"
      end
    end
end