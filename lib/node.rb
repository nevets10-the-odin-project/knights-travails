class Node
  include Comparable

  attr_accessor :root, :moves

  def initialize(root, moves)
    @root = root
    @moves = moves
  end

  def <=>(other)
    root <=> other.root
  end
end
