class Node
  include Comparable

  attr_accessor :root, :children

  def initialize(root, moves = [])
    @root = root
    @children = moves
  end

  def <=>(other)
    root <=> other.root
  end
end
