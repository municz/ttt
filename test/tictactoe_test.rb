require 'test_helper'

describe TicTacToe do
	it "X wins" do
	t1 = TicTacToe.new([["X","_","O"],
						["_","X","O"],
						["_","_","X"]
						])
	t1.winner.must_equal "X"			
	end
	it "O wins" do
	t1 = TicTacToe.new([["O","O","O"],
						["_","X","O"],
						["X","_","X"]
						])
	t1.winner.must_equal "O"			
	end
end