require_relative 'node'

class Knight
  attr_accessor :start_pos, :cur_pos, :end_pos

  MOVES = [[2, 1], [1, 2], [-2, 1], [1, -2], [2, -1], [-1, 2], [-2, -1], [-1, -2]]

  def initialize(start_pos, end_pos)
    @start_pos = start_pos
    @cur_pos = build_tree(start_pos)
    @and_pos = end_pos
  end

  def build_tree(root)
    valid_moves = validate_moves(root)
    Node.new(root, valid_moves)
  end

  def validate_moves(root)
    potential = MOVES.map { |move| [move[0] + root[0], move[1] + root[1]] }
    potential.filter { |move| move[0].between?(0, 7) && move[1].between?(0, 7) }
  end

  # Build method to traverse through nodes
end
