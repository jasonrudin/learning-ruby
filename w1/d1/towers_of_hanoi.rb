def towers_of_hanoi
	left_stack = []
	middle_stack = []
	right_stack = [5,4,3,2,1]

	source_selected = []
	destination_selected = []

	while left_stack != [5,4,3,2,1] do
		puts "Here is the board:"
		p left_stack 
		p middle_stack 
		p right_stack
		
		#Get user input for the tower to take from
		puts "Which tower do you want to take from?"
		source = gets.chomp
		while (source != "top" && source != "middle" && source != "bottom")
			puts source
			puts "You bozo, your choices are top, middle, or bottom! So which one do you want?"
			source = gets.chomp
		end

		#Get user input for the tower to put it to
		puts "Where do you want to put it?"
		destination = gets.chomp
		while (destination != "top" && destination != "middle" && destination != "bottom")
			puts destination
			puts "You bozo, your choices are top, middle, or bottom! You also can't pick the same place you are taking from! So which one do you want?"
			destination = gets.chomp
		end

		#Get the right arrays based on the user input
		if(source == "top")
			source_selected = left_stack
		elsif source == "middle"
			source_selected = middle_stack
		else
			source_selected = right_stack
		end

		if(destination == "top")
			destination_selected = left_stack
		elsif destination == "middle"
			destination_selected = middle_stack
		else
			destination_selected = right_stack
		end

		if destination_selected.empty? == false
			if source_selected.empty? == false
				if source_selected[-1] < destination_selected[-1]
					number_to_move = source_selected.pop
					destination_selected << number_to_move
				else
				puts "You can't move that there, its bigger than what you are putting it on top of! Do you even know how to build a tower?"
				end
			else
				puts "You should have picked a tower with something in it!"
			end
		else
			number_to_move = source_selected.pop
			destination_selected << number_to_move
		end
	end

	puts "Congrats, you won!"

end

towers_of_hanoi
