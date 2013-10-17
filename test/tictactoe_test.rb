require 'test_helper'

class TestTictactoe < MiniTest::Unit::TestCase
	def setup
		@ticRowX = TicTacToe.new([["X","X","X"],
								  ["O","O","_"],
								  ["O","_","_"]])
		@ticRowO = TicTacToe.new([["X","_","X"],
								  ["O","O","O"],
								  ["_","X","_"]])
		@ticDiagX = TicTacToe.new([["X","O","_"],
								  ["O","X","_"],
								  ["O","_","X"]])
		@ticDiagO = TicTacToe.new([["X","X","O"],
								  ["X","O","_"],
								  ["O","_","_"]])
		@ticColX = TicTacToe.new([["X","X","O"],
								  ["O","X","_"],
								  ["O","X","_"]])
		@ticColO = TicTacToe.new([["O","X","X"],
								  ["O","X","_"],
								  ["O","_","_"]])
		@ticNil = TicTacToe.new([["O","X","O"],
								  ["X","X","_"],
								  ["O","_","_"]])
	end

	def test_winner
		assert_equal "X", @ticRowX.winner
		assert_equal "O", @ticRowO.winner
		assert_equal "X", @ticDiagX.winner
		assert_equal "O", @ticDiagO.winner
		assert_equal "X", @ticColX.winner
		assert_equal "O", @ticColO.winner
		assert_equal nil, @ticNil.winner
	end
end
