require_relative 'node'

class Knight
  attr_accessor :cur_pos, :end_pos

  MOVES = [[2, 1], [1, 2], [-2, 1], [1, -2], [2, -1], [-1, 2], [-2, -1], [-1, -2]]

  def initialize(start_pos, end_pos)
    @cur_pos = add_node(start_pos)
    @end_pos = end_pos
  end

  def add_node(root)
    valid_moves = validate_moves(root)
    Node.new(root, valid_moves)
  end

  def validate_moves(root)
    potential = MOVES.map { |move| [move[0] + root[0], move[1] + root[1]] }
    potential.filter { |move| move[0].between?(0, 7) && move[1].between?(0, 7) }
  end

  # Build method to traverse through nodes.
  # The tree should grow with each move to take
  # them out of the potential list of future moves
end
