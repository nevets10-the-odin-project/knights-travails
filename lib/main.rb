require_relative 'knight'

def knight_moves(start_pos, end_pos)
  return 'Start out of bounds.' if start_pos.any? { |i| i < 0 || i > 7 }
  return 'End out ot of bounds.' if end_pos.any? { |i| i < 0 || i > 7 }

  knight = Knight.new(start_pos, end_pos)
  path = knight.get_next_paths
  puts "You made it in #{path.length - 1} moves! Here's your path:"
  path.each do |move|
    p move
  end
end

knight_moves([7, 0], [0, 7])
