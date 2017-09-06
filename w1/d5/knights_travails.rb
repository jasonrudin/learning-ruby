require './tree_node.rb'

class KnightPathFinder

	attr_accessor :move_tree, :starting_position

	def initialize(starting_position)
		@starting_position = starting_position
		self.build_move_tree
	end

	def build_move_tree
		@move_tree = TreeNode.new(@starting_position, nil)
		nodes_to_spawn = [@move_tree]
		new_additions = 3

		while(new_additions > 0)
			output = self.new_move_positions(nodes_to_spawn[0].value)
			output.each do |potential_position|
				TreeNode.new(potential_position, nodes_to_spawn[0])
			end

			nodes_to_spawn[0].children.each do |child|
				p child.value
			end

			nodes_to_spawn = nodes_to_spawn + nodes_to_spawn[0].children
			nodes_to_spawn.shift
			
			#nodes_to_spawn.each do |value|
				#p value.value
			#end
			p nodes_to_spawn.length
			new_additions = new_additions - 1
		end

	end

	def new_move_positions(initial_position)
		output = []
		output << [initial_position[0]+2, initial_position[1]+1]
		output << [initial_position[0]+2, initial_position[1]-1]
		output << [initial_position[0]-2, initial_position[1]+1]
		output << [initial_position[0]-2, initial_position[1]-1]
		output << [initial_position[0]+1, initial_position[1]+2]
		output << [initial_position[0]+1, initial_position[1]-2]
		output << [initial_position[0]-1, initial_position[1]+2]
		output << [initial_position[0]-1, initial_position[1]-2]
	end

end

kpf = KnightPathFinder.new([0,0])
p kpf.move_tree.children.length