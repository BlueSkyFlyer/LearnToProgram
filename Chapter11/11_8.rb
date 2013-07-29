
# *** Safer Program Downloading *** 


Dir.chdir 'C:/Documents and Settings/Jack/PictureInbox'

# First we name all of the pictures to be moved.
pic_names = Dir['F:/**/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

#This will be our counter. We'll start at 1 today, 
# though normally I like to count from 0. 
pic_number = 1

pic_names.each do |name|
	print '.' #This is our "Progress bar"

	new_name = if pic_number < 10
		"#{batch_name}0#{pic_number}.jpg"
	else
		"#{batch_name}#{pic_number}.jpg"
	end

	# This renames the picture, but since "name"
	# has a big long path on it, and "new_name" doesn't, it also moves the file
	# to the current working directory, which is now Jack's PictureInbox folder.
	# Since it's a *move*, this effectively downloads and deletes the originals. 
	# And since this is a memory care, not a hard drive, each of these takes a second
	# or so; hence, the little dots let her know that my program didn't hose her machine.

	if File.exist? new_name
		puts "An error has occured. #{new_name} already exists. Exiting."
		exit
	end

	File.rename name, new_name
	# Finally, we increment the counter
	pic_number = pic_number + 1
end


# *** Build your own playlist ***

Dir.chdir 'music/Playlists'

puts "What would you like to call this Playlist?"
playlist_name = gets.chomp

def music_shuffle filenames
	filenames = filenames.sort
	len       = filenames.length

	#Now we shuffle twice
	2.times do
		l_idx = 0   # index of next card in left pile
		r_idx = len/2  # index of next card in right pile
		shuf = []

		while shuf.length < len
			if shuf.length%2 == 0
				#take card from right pile
				shuf.push(filenames[r_idx])
				r_idx = r_idx + 1
			else
				shuf.push(filenames[l_idx])
				l_idx = l_idx + 1
			end
		end

		filenames = shuf
	end

	#And cut the deck
	arr = []
	cut = rand(len) # index of card to cut at
	idx = 0

	while idx < len
		arr.push(filenames[(idx+cut)%len])
		idx = idx + 1
	end

	arr
end

all_accs = music_shuffle(Dir['**/*.acc'])

File.open "#{playlist_name}.m3u", 'w' do |f|
	all_accs.each do |acc|
	  f.write acc+"\n"
	end
end