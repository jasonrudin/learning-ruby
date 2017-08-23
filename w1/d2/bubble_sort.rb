def bubble_sort(unsortedArray)
	hasBeenSwapped = true
	n = unsortedArray.length

	while hasBeenSwapped
		hasBeenSwapped = false
		i = 0
		(n-1).times do
			if unsortedArray[i] > unsortedArray[i+1]
				p "#{unsortedArray[i]}, #{unsortedArray[i+1]}"
				temp = unsortedArray[i]
				unsortedArray[i] = unsortedArray[i+1]
				unsortedArray[i+1] = temp
				hasBeenSwapped = true
				p unsortedArray
			end
			i = i + 1
		end
	end

end

bubble_sort([3,-5,7,2,-1,0,2,10,4])