require 'test_helper'

describe TicTacToe do
	it "does something" do
		"".must_equal ""	
	end

	describe "X wins horizontally" do
		subject do 
			TicTacToe.new([["X", "X", "X"],
	                       ["O", "O", "_"],
	                       ["O", "_", "_"]])
		end
		it "X must be the winner" do
			subject.winner.must_equal "X"
		end
	end

	describe "O wins vertically" do
		subject do 
			TicTacToe.new([["O", "X", "X"],
	                       ["O", "O", "_"],
	                       ["O", "_", "_"]])
		end
		it "O must be the winner" do
			subject.winner.must_equal "O"
		end
	end

	describe "O wins cross" do
		subject do 
			TicTacToe.new([["O", "O", "_"],
	                       ["X", "O", "_"],
	                       ["X", "_", "O"]])
		end
		it "O must be the winner" do
			subject.winner.must_equal "O"
		end
	end
end
