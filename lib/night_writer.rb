input = ARGV[0]
output = ARGV[1]

reader = File.open(ARGV[0], 'r')
text = reader.read
reader.close


writer = File.open(ARGV[1], "w")
text_2 = writer.write(text.upcase) 
writer.close

p "Created #{output} containing #{text_2} characters"