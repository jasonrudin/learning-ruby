def bubble_sort(unsortedArray)
	unsortedArray.each_with_index do |element, i|
		p "#{element}, #{i}"
	end

end

bubble_sort([3,7,2,-1,0,2,10,4])