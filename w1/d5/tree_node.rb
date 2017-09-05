class TreeNode

	attr_accessor :value, :parent

	def initialize(value, parent)
		@value = value
		@children = []
		@parent = parent
		if @parent != nil
			parent.add_child(self)
		end
	end


	def children
		@children
	end

	def add_child(new_childgit)
		#to-do: add validation that the new child isn't already in the tree by doing a dfs on the new child's value
		@children << new_child
		new_child.parent = self
	end

	def remove_child(child_to_remove)
		@children.delete(child_to_remove)
	end

	def dfs(target_value)
	if self.value == target_value
		return self
	else
		self.children.each do |element|
			result = element.dfs(target_value)
			return result unless result.nil?
		end
	end
	nil
	end

	def bfs(target_value)
		to_search = []
		to_search << self
		while !to_search.empty?
			to_check = to_search.shift
			p to_check.value
			if (to_check.value == target_value)
				return to_check
			else
				to_search = to_search + to_check.children
			end
		end
	end

end




node = TreeNode.new(5, nil)
node_child1 = TreeNode.new(3, node)
node_child2 = TreeNode.new(4, node)
node_child3 = TreeNode.new(7, node)
l2_child1 = TreeNode.new(-5, node_child1)
l2_child2 = TreeNode.new(-4, node_child2)
l2_child3 = TreeNode.new(-3, node_child3)
l2_child4 = TreeNode.new(-2, node_child3)
l2_child5 = TreeNode.new(-3, node_child3)

l3_child1 = TreeNode.new(100, nil)
l2_child5.add_child(l3_child1)

result = node.bfs(4)

if result.is_a?(TreeNode)
	p "YE"
else
	p "Ne"
end

