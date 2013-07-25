def ask_recursively question
  puts question
  reply = gets.chomp.downcase

  if reply == 'yes'
  	true
  elsif reply == 'no'
  	false
  else
  	puts 'Please answer "yes" or "no"'
  	ask_recursively question #This is the magic line
  end
end

ask_recursively 'Do you wet the bed?'

def factorial num
	if num < 0
		return 'You can\'t take the factorial of a negative number!'
	end

	if num <= 1
		1
	else
		num * factorial(num-1)
	end
end

puts factorial(3)
puts factorial(10)

# These are just to make the map easier for me to read.
# "M" is visually more dense than "o"

M = 'land'
o = 'water'

world = [[o,o,o,o,o,o,o,o,o,o,o],
         [o,o,o,o,M,M,o,o,o,o,o],
         [o,o,o,o,o,o,o,o,M,M,o],
         [o,o,o,M,o,o,o,o,o,M,o],
         [o,o,o,M,o,M,M,o,o,o,o],
         [o,o,o,o,M,M,M,M,o,o,o],
         [o,o,o,M,M,M,M,M,M,M,o],
         [o,o,o,M,M,o,M,M,M,o,o],
         [o,o,o,o,o,o,M,M,o,o,o],
         [o,M,o,o,o,M,o,o,o,o,o],
         [o,o,o,o,o,o,o,o,o,o,o]]

def continent_size world, x, y
	if world[y][x] != 'land'
		# Either it's water or we already counted it,
		# but either way, we don't want to count it now
		return 0
	end
	# So first we count this tile...
	size = 1
	world[y][x] = 'counted land'

	# ... then we count all of the neighboring eith tiles
	# (and, of course, their neighbors by the way of the recursion)
	size = size + continent_size(world, x-1, y-1)
  size = size + continent_size(world, x  , y-1)
  size = size + continent_size(world, x+1, y-1)
  size = size + continent_size(world, x-1, y  )
  size = size + continent_size(world, x+1, y  )
  size = size + continent_size(world, x-1, y+1)
  size = size + continent_size(world, x  , y+1)
  size = size + continent_size(world, x+1, y+1)
  size
end

puts continent_size(world, 0, 0)