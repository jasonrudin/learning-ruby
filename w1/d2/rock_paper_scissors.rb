def rps(userChoice)

	computerChoice = getComputerChoice
	result = checkWinner(userChoice, computerChoice)
	p "#{computerChoice}, #{result}"

end

def getComputerChoice
	selection = rand(3)
	if selection == 0
		"Rock"
	elsif selection == 1
		"Paper"
	else
		"Scissors"
	end

end

def checkWinner(userChoice, computerChoice)
	if userChoice == "Rock" && computerChoice == "Scissors"
		"You Win!"
	elsif userChoice == "Paper" && computerChoice == "Rock"
		"You Win!"
	elsif userChoice == "Scissors" && computerChoice == "Paper"
		"You Win!"
	elsif userChoice == "Rock" && computerChoice == "Rock"
		"You Draw!"
	elsif userChoice == "Paper" && computerChoice == "Paper"
		"You Draw!"
	elsif userChoice == "Scissors" && computerChoice == "Scissors"
		"You Draw!"
	else
		"You Lose"
	end
end


rps("Rock")