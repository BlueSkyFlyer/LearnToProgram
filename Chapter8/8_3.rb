puts "Would you like to run the Enter program or see a Table of Contents?"
puts "Type \'Enter\'  or \'TOC\'"

choice = gets.chomp

case choice
when 'Enter'
	words = []
	puts 'Type one word on each line. Each word will be added to the array'
	puts 'until you hit \'Enter\' on an empty line.'
	while true
		entry = gets.chomp
		if entry == ''
		  break
		else
			words.push entry
		end
	end
	words.sort!
	puts words

when 'TOC'
line_width = 30
puts 'What is the name of Chapter 1?'
chapter_1_name = gets.chomp
puts 'And which page does Chapter 1 start on?'
chapter_1_page = gets.chomp
puts 'What is the name of Chapter 2?'
chapter_2_name = gets.chomp
puts 'And which page does Chapter 2 start on?'
chapter_2_page = gets.chomp
puts 'What is the name of Chapter 3?'
chapter_3_name = gets.chomp
puts 'And which page does Chapter 3 start on?'
chapter_3_page = gets.chomp

puts('Table of Contents'.center(line_width))
puts ''
puts(('Chapter 1: ' + chapter_1_name).ljust(line_width) + chapter_1_page.rjust(line_width))
puts(('Chapter 2: ' + chapter_2_name).ljust(line_width) + chapter_2_page.rjust(line_width))
puts(('Chapter 3: ' + chapter_3_name).ljust(line_width) + chapter_3_page.rjust(line_width))
else 
	puts 'Try again!'
end
