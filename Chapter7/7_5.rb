puts "Would you like to sing 99 Bottles of Beer, try to speak to Grandma, or find Leap Years in a given range?"
puts "Enter \'Beer\', \'Grandma\', or \'Leap\'"
choice = gets.chomp.capitalize

case choice
when 'Beer'

	# 99 Bottles of Beer on the wall
	puts 'How many bottles of beer are on the wall?'
	beers = gets.chomp.to_i
	until beers == 0
		puts beers.to_s + ' bottles of beer on the wall, ' + beers.to_s + ' bottles of beer!'
		beers -= 1 
		puts 'Take one down, pass it around, ' + beers.to_s + ' bottles of beer on the wall!'
	end

when 'Grandma'
	# Deaf Grandma Extended
	while true
		puts 'WHAT DO YOU WANT, BOY?!'
	  response = gets.chomp
		while response != response.upcase 
			puts 'HUH?! SPEAK UP SONNY!'
			response = gets.chomp
		end
		if response == response.upcase
			puts 'NO, NOT SINCE THE YEAR ' + rand(2000).to_s
		end

		if response == 'BYE'
			puts "I CAN\'T HEAR YOU!"
			first_attempt = gets.chomp
			  if first_attempt == 'BYE'
			  	puts "HMMMMMM?"
			  	second_attempt = gets.chomp
			  	  if second_attempt == 'BYE'
			  	  	puts "Fine, see you later then."
			  	  	break
			  	  else
			  	  	puts "Oh good, I thought you were leaving."
			  	  end
			  else
			  	puts 'Please stick around.'
			  end
		end
	end

when "Leap"
	puts 'Lets find the leap years in a given time range.'
	puts 'What is the lower bound?'
	lower_bound = gets.chomp.to_i
	puts 'What is the upper bound?'
	upper_bound = gets.chomp.to_i
	year_range = (lower_bound..upper_bound).to_a
	year_range.each do |y|
		if y % 100 != 0 && y % 4 == 0
			puts y
		else
		end
	end

else
	puts "I didn't understand that."
end



		