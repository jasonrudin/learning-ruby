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
end

dups = [1,2,3,5,2,2,4, 7, 8]
p dups.my_uniq

clear = [1,2,3,4,5]
p clear.my_uniq