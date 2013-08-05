prof = 'We tore the universe a new space-hole, alright!'
puts prof[12, 8]
puts prof[12..19] # 8 characters total
puts
def is_avi? filename
	filename.downcase[-4..-1] == '.avi'
end
