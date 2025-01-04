class Node
  include Comparable

  attr_accessor :root, :children, :prev_node

  def initialize(root, moves = [], prev_node = nil)
    @root = root
    @children = moves
    @prev_node = prev_node
  end

  def <=>(other)
    root <=> other.root
  end
end
