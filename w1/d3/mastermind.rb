class MasterMind

	def initialize
		@number_of_pegs = 4
		@answer = setWinningAnswer
		@number_of_turns = 10
		@previousAnswers = []
		@number_correct = 0
		@number_close = 0
		self.run
	end

	def setWinningAnswer
		numColorHash = {0 => "R", 1=> "G", 
			2 => "B", 3 => "Y", 4=> "O", 5 => "P"}
		working_answer = []
		@number_of_pegs.times do
			working_answer << numColorHash[rand(6)]
		end
		working_answer
	end

	def run
		response = ""
		while @number_of_turns > 0
			while !checkIfValidResponse(response)
				puts "Your choice please:"
				response = gets.chomp
			end
			@number_correct = 0
			@number_close = 0
			if checkResponse(response)
				winningMessage
				break
			else
				incorrectResponseMessage(response)
			end
			@number_of_turns = @number_of_turns - 1
			response = ""
		end
		if @number_of_turns == 0
			losingMessage
		end
	end

	def checkIfValidResponse(response)
		if response.length != @number_of_pegs
			false
		elsif (response =~ /[RGBYOP]{#{@number_of_pegs}}/).nil?
			false
		else
			true
		end			
	end

	def checkResponse(response)
		responseArray = response.chars
		if(responseArray == @answer)
			true
		else
			tracker_array = Array.new(@number_of_pegs){ |i| 0}
			@answer.each_with_index do |element, i|

				if(element == responseArray[i])
					@number_correct = @number_correct + 1
					tracker_array[@answer.find_index(element)] = 1
				elsif (responseArray.include?(element))
					p tracker_array[@answer.find_index(element)]
					if(tracker_array[@answer.find_index(element)] == 0)
						@number_close = @number_close + 1
						tracker_array[@answer.find_index(element)] = 1
					end
				end
			end
			false
		end
	end

	def winningMessage
		puts "Congrats, you won!"
	end

	def incorrectResponseMessage(response)
		@previousAnswers << "Response: #{response}, Number right: #{@number_correct}, Number close: #{@number_close}"
		puts "Not quite, you have #{@number_of_turns - 1} turns left."
		puts "You got #{@number_correct} matches right and #{@number_close} near matches."
		puts "Here's what you've done so far:"

		puts @previousAnswers
	end

	def losingMessage
		puts "You lost, try again soon!"
	end

end

MasterMind.new