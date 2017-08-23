def bubble_sort(unsortedArray)
	hasBeenSwapped = true
	n = unsortedArray.length
	while hasBeenSwapped
		hasBeenSwapped = false
		#(n-1).times do |element, i|
			if element > unsortedArray[i+1]
				p "#{element}, #{unsortedArray[i+1]}"
				temp = element
				unsortedArray[i] = unsortedArray[i+1]
				unsortedArray[i+1] = temp
				hasBeenSwapped = true
				p unsortedArray
			end
		end
	end

end

bubble_sort([3,7,2,-1,0,2,10,4])