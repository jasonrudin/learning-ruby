require './tree_node.rb'

class KnightPathFinder

	attr_accessor :move_tree, :starting_position, :board_width

	def initialize(starting_position)
		@starting_position = starting_position
		@board_width = 8
		self.build_move_tree
	end

	def build_move_tree
		@move_tree = TreeNode.new(@starting_position, nil)
		nodes_to_spawn = [@move_tree]
		locations_visited = [@move_tree.value]

		while(nodes_to_spawn != [])
			output = self.new_move_positions(nodes_to_spawn[0].value)
			output.each do |potential_position|
				if(move_in_bounds(potential_position) && !locations_visited.include?(potential_position))
					TreeNode.new(potential_position, nodes_to_spawn[0])
					locations_visited << potential_position
				end
			end

			nodes_to_spawn = nodes_to_spawn + nodes_to_spawn[0].children
			nodes_to_spawn.shift
			
		end

	end

	def move_in_bounds(position)
		if(position[0] >= board_width)
			false
		elsif(position[0] < 0)
			false
		elsif position[1] >= board_width
			false
		elsif position[1] < 0
			false
		else
			true
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

	def find_path(target_position)
		if(move_in_bounds(target_position))
			@move_tree.dfs(target_position)
		else
			"Error, your move was not in bounds"
		end
	end

end

kpf = KnightPathFinder.new([0,0])
p kpf.find_path([4,0]).path





