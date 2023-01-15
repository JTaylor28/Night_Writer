require './lib/translator'

input = ARGV[0]
output = ARGV[1]

reader = File.open(ARGV[0], 'r')
text = reader.read
reader.close

translator = Translator.new

writer = File.open(ARGV[1], "w")
braille = writer.write(translator.english_to_braille(text))
writer.close

p "Created #{output} containing #{braille} characters"