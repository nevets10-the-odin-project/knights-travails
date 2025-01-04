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

    end_found = false
    queue = [cur_root]
    return_arr = []

    # Setting a limited loop to test
    until end_found
      cur_node = queue[0]
      end_found = true if cur_node.root == end_pos
      cur_node.children.each { |move| queue << add_node(move, cur_node.root) }
      return_arr << queue[0]
      queue.shift
    end

    return_arr
  end
end
