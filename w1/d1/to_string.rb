def num_to_s(number, base)
	final_string = ""

	base_digit_hash = {}
	base_digit_hash[0] = '0'
	base_digit_hash[1] = '1'
	base_digit_hash[2] = '2'
	base_digit_hash[3] = '3'
	base_digit_hash[4] = '4'
	base_digit_hash[5] = '5'
	base_digit_hash[6] = '6'
	base_digit_hash[7] = '7'
	base_digit_hash[8] = '8'
	base_digit_hash[9] = '9'
	base_digit_hash[10] = '10'
	base_digit_hash[11] = 'A'
	base_digit_hash[12] = 'B'
	base_digit_hash[13] = 'C'
	base_digit_hash[14] = 'D'
	base_digit_hash[15] = 'E'
	base_digit_hash[16] = 'F'

	exponent = 0

	while base**exponent <= number
		digit = (number / (base**exponent)) % base
		final_string = base_digit_hash[digit] + final_string
		exponent = exponent + 1

		p "#{base**exponent}, #{number}"
	end

	final_string

end

p num_to_s(8, 2)