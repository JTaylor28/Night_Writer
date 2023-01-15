input = ARGV[0]

output = ARGV[1]

reader = File.open(ARGV[0], "r")
inbound_text = reader.read
reader.close


writer = File.open(ARGV[1], "w")
writer.write(inbound_text.upcase)
writer.close



p "Created #{input} containing #{inbound_text.size} characters"