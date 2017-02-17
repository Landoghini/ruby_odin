def caesar_cipher(input,shift)
	output = ""
	# Takes the input and scans it for every character and assigns it to the variable character
	input.scan(/./) do |character|
		# Checks to see if the character is within A-Z
		if character =~ /[A-Z]/
			# If the character is within the array it assigns the cipher method to cipher_char
			cipher_char = az_wrap(character,shift,'A')
		# Checks to see if the character is within a-z
		elsif character =~ /[a-z]/
			# If the character is within the array it assigns the cipher method to cipher_char
			cipher_char = az_wrap(character,shift,'a')
			# If the character isnt in the range it justs passes it straight through
		elsif  character =~ /\W/
			cipher_char = character
		end
		# Pushes the results of the cipher to the output string
		output << cipher_char
	end
	puts output
end
			
			

def az_wrap(character, shift,base)
	# Takes the character param and converts it to ASCII then adds the shift to that number
	# Then subtracts the base ASCII from the sum, then uses modulo to find the remainder
	# Then adds the base to remainder and finally converts it back from ASCII to a character
	(((character.ord + shift)- base.ord) % 26 + base.ord).chr
end


caesar_cipher("Hello how are you",1)