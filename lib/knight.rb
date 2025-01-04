require_relative 'node'

class Knight
  attr_accessor :root, :end_pos

  MOVES = [[2, 1], [1, 2], [-2, 1], [1, -2], [2, -1], [-1, 2], [-2, -1], [-1, -2]]

  def initialize(start_pos, end_pos)
    @root = add_node(start_pos)
    @end_pos = end_pos
  end

  def add_node(root, prev_root = nil)
    valid_moves = validate_moves(root)
    Node.new(root, valid_moves, prev_root)
  end

  def validate_moves(root)
    potential = MOVES.map { |move| [move[0] + root[0], move[1] + root[1]] }
    potential.filter { |move| move[0].between?(0, 7) && move[1].between?(0, 7) }
  end

  def get_next_paths(cur_root = root)
    return if cur_root.nil?

    queue = [cur_root]

    loop do
      cur_node = queue[0]

      return cur_node if cur_node.children.include?(end_pos)

      cur_node.children.each { |move| queue << add_node(move, cur_node.root) }
      queue.shift
    end
  end
end
