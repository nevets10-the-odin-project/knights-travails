class Node
  include Comparable

  attr_accessor :vertex, :moves

  def initialize(root, moves)
    @vertex = root
    @moves = moves
  end

  def <=>(other)
    vertex <=> other.vertex
  end
end
