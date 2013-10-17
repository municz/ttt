class TicTacToe
  def initialize(config)
    @config = config.map { |row| row.map { |field| field.gsub(/[^XO]/,"") } }
    @winning_count = 3
  end

  def winner
    if in_row?(@config, "X") || in_coll?(@config, "X") || in_diag?(@config, "X")
      "X"
    elsif in_row?(@config, "O") || in_coll?(@config, "O") || in_diag?(@config, "O")
      "O"
    else
      nil
    end
  end

  def in_row?(config, player)
    config.include?([player] * @winning_count)
  end

  def in_coll?(config, player)
    in_row?(config.transpose, player)
  end

  def in_diag?(config, player)
    diag_indexes = [(0...size).to_a.zip((0...size).to_a)]
    diag_indexes << (0...size).to_a.reverse.zip((0...size).to_a)
    diagonals = diag_indexes.map {|indexes| indexes.map { |x, y| config[x][y] } }
    in_row?(diagonals, player)
  end

  def size
    @config.size
  end
end
