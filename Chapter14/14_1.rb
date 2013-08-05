def do_self_importantly some_proc
	puts "Everybody just HOLD ON! I'm doing something..."
	some_proc.call
	puts "OK everyone, I'm done. As you were."
end

say_hello = Proc.new do 
	puts 'hello'
end

say_goodbye = Proc.new do
	puts 'goodbye'
end

do_self_importantly say_hello
do_self_importantly say_goodbye

def maybe_do some_proc
	if rand(2) == 0
		some_proc.call
	end
end

def twice_do some_proc
	some_proc.call
	some_proc.call
end

wink = Proc.new do
	puts '<wink>'
end

glance = Proc.new do
	puts '<glance>'
end

maybe_do wink
maybe_do wink
maybe_do glance
maybe_do glance
twice_do wink
twice_do glance

def do_until_false first_input, some_proc
	input = first_input
	output = first_input

	while output
		input = output
		output = some_proc.call input
	end
		input
end

build_array_of_squares = Proc.new do |array|
	last_number = array.last
	if last_number <= 0
		false 
	else
		#Take off the last number
		array.pop
		# ... and replace it with its square
		array.push last_number*last_number
		# ...followed by the next smaller number.
		array.push last_number-1
	end
end

always_false = Proc.new do |just_ignore_me|
	false
end
