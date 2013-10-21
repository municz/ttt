require 'test_helper'

describe TicTacToe do
	describe "X wins horizontally" do
		subject do
			TicTacToe.new([["X", "X", "X"],
                    			             ["O", "O", "_"],
                    				     ["O", "_","_"]])
		end
		it "X must be the winner" do
			subject.winner.must_equal "X"
		end
	end

	describe "X wins horizontally" do
		subject do
			TicTacToe.new([["_", "O", "O"],
                    			             ["X", "X", "X"],
                    				     ["O", "_","_"]])
		end
		it "X must be the winner" do
			subject.winner.must_equal "X"
		end
	end
	
	describe "X wins horizontally" do
		subject do
			TicTacToe.new([["_", "O", "_"],
                    			             ["O", "O", "_"],
                    				     ["X", "X","X"]])
		end
		it "X must be winner" do
			subject.winner.must_equal "X"
		end
	end

	describe "X wins vertically" do
		subject do
			TicTacToe.new([["X", "O", "_"],
                    			             ["X", "O", "_"],
                    				     ["X", "_","O"]])
		end
		it "X must be winner" do
			subject.winner.must_equal "X"
		end
	end

	describe "X wins diagonally" do
		subject do
			TicTacToe.new([["X","O","_"],
		  			["O","X","O"],
					["_","_","X"]])
		end
		it "X must be winner" do
			subject.winner.must_equal "X"
		end
	end
end


