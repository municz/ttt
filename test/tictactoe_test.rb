require 'test_helper'

describe TicTacToe do
	
	one = TicTacToe.new([["X", "X", "X"],
                     	 ["O", "O", "_"],
                     	 ["O", "_", "_"]])


	two = TicTacToe.new([["O", "X", "X"],
                     	 ["O", "O", "_"],
                     	 ["O", "_", "_"]])

	it "size must_equal to 3" do
		one.size.must_equal 3
		two.size.must_equal 3
	end

	it "winner is as expected" do
		one.winner.must_equal "X"
		two.winner.must_equal "O"
	end

	it "in row is true" do
		one.in_row?([["X", "X", "X"],
                     ["O", "O", "_"],
                     ["O", "_", "_"]],"X").must_equal true
		two.in_row?([["O", "X", "X"],
                     ["O", "O", "_"],
                     ["O", "_", "_"]],"X").must_equal false
	end

	it "in coll is false" do
		one.in_coll?([["X", "X", "X"],
                      ["O", "O", "_"],
                      ["O", "_", "_"]],"X").must_equal false
	end

	it "in diag is false" do
		one.in_diag?([["X", "X", "X"],
                      ["O", "O", "_"],
                      ["O", "_", "_"]],"X").must_equal false
	end
 
end
