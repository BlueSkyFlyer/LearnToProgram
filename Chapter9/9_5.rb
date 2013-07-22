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
		def new_roman_numeral num
			raise 'Must use positive integer' if num <= 0

			digit_vals = [['I',    5,     1]
		                ['V',   10,     5]
		                ['X',   50,    10]
		                ['L',  100,    50]
		              	['C',  500,   100]
		              	['D', 1000,   500]
		                ['M',  nil,  1000]]

		  roman = ''
		  remaining = nil

		  # Build string "roman" in revers
		  build_rev = proc do |l,m,n|
		  	num_l = m ? (num % m / n) : (num / n)
		  	full = m && (num_l == (m/n - 1))
		  	  if full && (num_l>1 || remaining)
		  	  	# must carry
		  	  	remaining ||= 1 #carry l if not already carrying
		  	  else
		  	  	if remaining
		  	  		roman << l + remaining
		  	  		remaining = nil
		  	  	end

		  	  	roman << l * num_l
		  	  end
		  	end

		  	digit_vals.each {|l,m,n| build_rev[l,m,n]}

		  	roman.reverse
		  end





	

