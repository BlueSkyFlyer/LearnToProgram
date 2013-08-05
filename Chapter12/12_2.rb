puts "Would you like to find out when you will turn a billion seconds old, "
puts "or did you forget how old you are?"
puts "Enter 'billion' or 'age' to proceed."

choice = gets.chomp.downcase

case choice
when 'billion'
	puts "What year were you born?"
	year = gets.chomp.to_i
	puts "What month were you born?"
	month = gets.chomp.to_i
	puts "What day of the month were you born?"
	day = gets.chomp.to_i
	puts "What hour of the day were you born?"
	hour = gets.chomp.to_i
	puts "What minute of the hour were you born?"
	minute = gets.chomp.to_i

	birthday = Time.local(year, month, day, hour, minute)
	billion_seconds = birthday + 1000000000
	puts "You'll be one billion seconds old on #{billion_seconds}!"

when 'age'
	puts "What year were you born?"
	year = gets.chomp.to_i
	puts "What month were you born?"
	month = gets.chomp.to_i
	puts "What day of the month were you born?"
	day = gets.chomp.to_i

	birthday = Time.local(year, month, day)
	now = Time.new

	age = now.year - birthday.year

	puts "You are #{age} years old!"
else
	puts "I didn't understand that."

end