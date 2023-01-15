require './lib/translator'

input = ARGV[0]
output = ARGV[1]

reader = File.open(ARGV[0], 'r')
braille = reader.read
reader.close

translator = Translator.new

writer = File.open(ARGV[1], "w")
text = writer.write(translator.braille_to_english(braille))
writer.close

p "Created #{output} containing #{braille.size} characters"