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


when 'dictionary'
	def sort array # This 'wraps' recursive_sort
	  recursive_sort array, []
  end

	def recursive_sort unsorted, sorted
	  if unsorted.length <= 0
	  	return sorted
	end

	  smallest       = unsorted.pop
	  still_unsorted = []

	  unsorted.each do |tested_object|
	    if tested_object.downcase < smallest.downcase   
	      still_unsorted.push smallest
	      smallest = tested_object
	    else
	    	still_unsorted.push tested_object
	    end
	  end
	  sorted.push smallest

	  recursive_sort still_unsorted, sorted
	end

	puts(sort(['carrot','banana','apple']))
end