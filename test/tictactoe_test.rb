require 'test_helper'

describe TicTacToe do
	describe "X wins horizontally" do
		subject do
			TicTacToe.new(TicTacToe.new([["X", "X", "X"],
                    			             ["O", "O", "_"],
                    				     ["O", "_","_"]])
		end
		it "X must be the winner" do
			subject.winner.must_equal "X"
		end
	end
end


