require 'test_helper'

describe TicTacToe do 
    describe "when winner is X horizontal" do
    	ttt = TicTacToe.new([["X", "X", "X"],
		                     ["O", "O", "_"],
		                     ["O", "_","_"]])
    	it "should say X" do
    		ttt.winner.must_equal "X"
    	end
    end

    describe "when winner is O diagonal" do
    	ttt = TicTacToe.new([["X", "X", "O"],
		                     ["O", "O", "_"],
		                     ["O", "_","_"]])
    	it "should say O" do
    		ttt.winner.must_equal "O"
    	end
    end

    describe "when no winner" do
    	ttt = TicTacToe.new([["X", "_", "X"],
		                     ["O", "O", "_"],
		                     ["O", "_","_"]])
    	it "should return nil" do
    		ttt.winner.must_equal nil
    	end
    end

end
