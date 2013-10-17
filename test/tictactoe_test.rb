require 'test_helper'

describe TicTacToe do

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

	describe "X wins vertically" do
		subject do
			TicTacToe.new([["X", "O", "O"],
                     	   ["X", "O", "_"],
                     	   ["X", "_", "_"]])
		end

		it "X must be the winner" do
 			subject.winner.must_equal "X"
		end

		it "size must be three" do 
			ttt.size.must_equal 3
		end
	end

	

	
end