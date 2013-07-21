puts "Would you like to sing 99 Bottles of Beer or try to speak to Grandma?"
puts "Enter \'Beer\' or \'Grandma\'"
choice = gets.chomp.capitalize

if choice == 'Beer'

	# 99 Bottles of Beer on the wall
	puts 'How many bottles of beer are on the wall?'
	beers = gets.chomp.to_i
	until beers == 0
		puts beers.to_s + ' bottles of beer on the wall, ' + beers.to_s + ' bottles of beer!'
		beers -= 1 
		puts 'Take one down, pass it around, ' + beers.to_s + ' bottles of beer on the wall!'
	end
elsif choice == 'Grandma'
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
end


		