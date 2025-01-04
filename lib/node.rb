class Node
  include Comparable

  attr_accessor :root, :children, :prev_root

  def initialize(root, moves = [], prev_root = nil)
    @root = root
    @children = moves
    @prev_root = prev_root
  end

  def <=>(other)
    root <=> other.root
  end
end
