class Array
	def my_uniq
		unique_elements = []
		self.each do |element|
			if unique_elements.include?(element)
			else
				unique_elements << element
			end
		end

		unique_elements

	end

	def two_sum
		pair_positions = []
		counter = 1
		self.each_with_index do |element, index|
			self[counter..-1].each_with_index do |comparator, secondIndex|
				if (element + comparator == 0)
					puts "#{index}, #{comparator}"
					pair_positions << [index, secondIndex + counter]
				end
			end
			counter = counter + 1
		end

		pair_positions
	end
end

dups = [-1, 0, 2, -2, 1, 1, -1]
p dups.two_sum

