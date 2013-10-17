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

		it "X must be in row" do
 			subject.in_row?([["X", "X", "X"],
                     	   ["O", "O", "_"],
                     	   ["O", "_", "_"]], "X").must_equal true
		end
	end

	describe "O wins vertically" do
		subject do
			TicTacToe.new([["O", "X", "O"],
                     	   ["O", "X", "_"],
                     	   ["O", "_", "_"]])
		end

		it "O must be the winner" do
 			subject.winner.must_equal "O"
		end

		it "X must be in col" do
 			subject.in_coll?([["X", "O", "O"],
                     	   ["X", "O", "_"],
                     	   ["X", "_", "_"]], "X").must_equal true
		end

		it "size must be three" do 
			subject.size.must_equal 3
		end
	end

	describe "X wins diagonally" do
		subject do
			TicTacToe.new([["X", "O", "O"],
                     	   ["O", "X", "_"],
                     	   ["O", "_", "X"]])
		end

		it "X must be in col" do
 			subject.in_diag?([["X", "O", "O"],
                     	   ["O", "X", "_"],
                     	   ["O", "_", "X"]], "X").must_equal true
		end
	end

	describe "no winner" do
		subject do
			TicTacToe.new([["X", "O", "O"],
                     	   ["O", "_", "_"],
                     	   ["O", "_", "X"]])
		end

		it "no winner" do
 			subject.winner.must_equal nil
		end
	end
end