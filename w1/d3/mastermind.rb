class MasterMind

	def initialize
		@answer = setWinningAnswer
		@number_of_turns = 10
		@previousAnswers = []
		self.run
	end

	def setWinningAnswer
		numColorHash = {0 => "R", 1=> "G", 
			2 => "B", 3 => "Y", 4=> "O", 5 => "P"}
		working_answer = []
		4.times do
			working_answer << numColorHash[rand(6)]
		end
		working_answer
	end

	def run
		response = ""
		p @answer
		while @number_of_turns > 0
			while !checkIfValidResponse(response)
				puts "Your choice please:"
				response = gets.chomp
			end
			if checkResponse(response)
				winningMessage
				break
			else
				incorrectResponseMessage
			end
			@number_of_turns = @number_of_turns - 1
			response = ""
		end
		if @number_of_turns == 0
			losingMessage
		end
	end

	def checkIfValidResponse(response)
		if response.length != 4
			false
		elsif (response =~ /[RGBYOP]{4}/).nil?
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
			false
		end
	end

	def winningMessage
		puts "Congrats, you won!"
	end

	def incorrectResponseMessage
		puts "Not quite, you have #{@number_of_turns - 1} turns left!"
		puts "You got XX matches right and YY near matches"
		puts "Here's what you've done so far:"
	end

	def losingMessage
		puts "You lost, try again soon!"
	end

end

MasterMind.new