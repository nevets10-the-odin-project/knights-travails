class Node
  include Comparable

  attr_accessor :vertex, :moves

  def initialize(vertex, moves)
    @vertex = vertex
    @moves = moves
  end

  def <=>(other)
    vertex <=> other.vertex
  end
end
