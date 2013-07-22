def favorite_food name
	if name == 'Lister'
		return 'vindaloo'
	end

	if name == 'Rimmer'
		return 'mashed potatoes'
	end

	'hard to say... maybe fried plantain?'
end

def favorite_drink name
	if name == 'Jean-Luc'
		'tea, Earl Grey, hot'
	elsif name == 'Kathryn'
		'coffee, black'
	else
		'perhaps...horchata?'
	end
end

def ask question
	while true
		puts question
		reply = gets.chomp.downcase

		if (reply == 'yes' || reply == 'no')
			if reply == 'yes'
				answer = true
			else
				answer = false
			end
			break
		else
			puts 'Please answer "yes" or "no".'
		end 
	end
	answer
end

puts "Hello, and thank you"
puts 
ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?'
wets_bed = ask 'Do you wet the bed?'
ask 'Do you like eating sopapillas?'

puts
puts 'Debreifing...'
puts 'Thank you'
puts
puts wets_bed


			