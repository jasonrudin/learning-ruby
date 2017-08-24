def super_print(options = {})
	defaults = {
		:name => "",
		:times => 1,
		:upcase => false,
		:reverse => false
	}

	updatedDefaults = defaults.merge(options)

	if(updatedDefaults[:upcase])
		updatedDefaults[:name] = updatedDefaults[:name].upcase
	end

	if(updatedDefaults[:reverse])
		updatedDefaults[:name] = updatedDefaults[:name].reverse
	end

	output = ""
	updatedDefaults[:times].times do 
		output = output + updatedDefaults[:name] + " "
	end

	p output

end

super_print(:name => "Jason", :upcase => true, :reverse => true, :times => 5)