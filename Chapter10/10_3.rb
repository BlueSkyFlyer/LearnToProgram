puts "Would you like to Shuffle or Dictionary Sort?"
puts 'Type "Shuffle" or "Dictionary".'

choice = gets.chomp.downcase

case choice

when 'shuffle'
	def shuffle array
		shuf = []
		while array.length > 0
			rand_index = rand(array.length)

			curr_index = 0
			new_array = []

			array.each do |item|
				if curr_index == rand_index
					shuf.push item
				else
					new_array.push item
				end

				curr_index = curr_index + 1
			end

			array = new_array
		end

		shuf
  end

  puts(shuffle([1,2,3,4,5,6,7,8,9]))

end