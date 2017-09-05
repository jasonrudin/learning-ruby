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

	def add_child(new_child)
		@children << new_child
		new_child.parent = self
	end

	def remove_child(child_to_remove)
		@children.delete(child_to_remove)
	end

end

def dfs(parent_node, target_value)
	if(parent_node.value == target_value)
		parent_node
		p parent_node.value
	else
		parent_node.children.each do |element|
			p element.value
			dfs(element, target_value)
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

dfs(node, -3)
