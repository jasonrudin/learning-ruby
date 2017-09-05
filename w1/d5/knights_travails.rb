require './tree_node.rb'

class KnightPathFinder
	def initialize(starting_position)
		@starting_position = starting_position
	end

end

kpf = KnightPathFinder.new([0,0])
p kpf.starting_position