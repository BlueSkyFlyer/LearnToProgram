puts "Would you like to see a number with Old-School Roman numerals, or 'new' Roman numberals?"
puts 'Type "OldRoman" or "NewRoman".'

choice = gets.chomp.downcase

def ask question
	while true
		puts question
		reply = gets.chomp.downcase
		if (reply == 'yes' || reply == 'no')
			if reply == 'yes'
				return true
			else
				return false
			end
			break
		else
			puts 'Please answer "yes" or "no".'
		end
	end
end

case choice
	when 'oldroman'
		def old_roman_numeral number
			while true
					if number < 3000
						puts 'Calculating...'
						m = number / 1000
						d = (number % 1000) / 500
						c = ((number % 1000) % 500) / 100
						l = (((number % 1000) % 500) % 100) / 50
						x = ((((number % 1000) % 500) % 100) % 50) / 10
						v = (((((number % 1000) % 500) % 100) % 50) % 10) / 5
						i = ((((((number % 1000) % 500) % 100) % 50) % 10) % 5)
						puts 'The Old Romans would write ' + number.to_s + ' as:'
						puts 'M'*m + 'D'*d + 'C'*c + 'L'*l + 'X'*x + 'V'*v + 'I'*i
						break
					else
						puts 'That\'s too big. Please enter a number below 3000.'
					end
				end
			end
		end
		puts "What number would you like to convert?"
		number = gets.chomp.to_i
		old_roman_numeral number

	when 'newroman'
		def new_roman_numeral number
			while true
				if number < 3000
					puts 'Calculating...'
					m = number / 1000
					d = (number % 1000) / 500
					c = ((number % 1000) % 500) / 100
					l = (((number % 1000) % 500) % 100) / 50
					x = ((((number % 1000) % 500) % 100) % 50) / 10
					v = (((((number % 1000) % 500) % 100) % 50) % 10) / 5
					i = ((((((number % 1000) % 500) % 100) % 50) % 10) % 5)
					numeral_array = [m, d, c, l, x, v, i]
					m_mod = number % 1000
					d_mod = number % 500
					c_mod = number % 100
					l_mod = number % 50
					x_mod = number % 10
					v_mod = number % 5
					mod_array = [m_mod, d_mod, c_mod, l_mod, x_mod, v_mod]

					numeral_array.each do |n|
						if n



	

