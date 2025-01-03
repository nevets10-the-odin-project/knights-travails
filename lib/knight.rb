class Knight
  attr_accessor :start_pos, :end_pos

  MOVES = [[2, 1], [1, 2], [-2, 1], [1, -2], [2, -1], [-1, 2], [-2, -1], [-1, -2]]

  def initialize(start_pos, end_pos)
    @start_pos = build_tree(start_pos)
    @and_pos = end_pos
  end

  def build_tree(root)
  end
end
