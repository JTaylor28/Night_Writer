input = ARGV[0]

output = ARGV[1]

handle = File.open(ARGV[0], "r")
incoming = handle.read
handle.close


writer = File.open(ARGV[1], "w")

writer.close


p "Created #{input} containing #{incoming.size} characters"