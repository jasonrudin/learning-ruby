class MasterMind

	def initialize
		@answer = setWinningAnswer
		self.run
	end

	def setWinningAnswer
		numColorHash = {0 => "R", 1=> "G", 2 => "B", 3 => "Y", 4=> "O", 5 => "P"}
		working_answer = []
		4.times do
			working_answer << numColorHash[rand(6)]
		end
		working_answer
	end

	def run
		p "Your choice please:"
		response = ""
		while !validateResponse(response)
			response = gets.chomp
		end
		p response
	end

	def validateResponse(response)
		if response.length != 4
			false
		elsif (response =~ /[RGBYOP]{4}/).nil?
			false
		else
			true
		end			
	end



end

MasterMind.new

