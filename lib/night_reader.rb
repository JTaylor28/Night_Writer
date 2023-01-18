require './lib/translator'

output = ARGV[1]

reader = File.open(ARGV[0], 'r')
braille = reader.read
reader.close

translator = Translator.new

writer = File.open(ARGV[1], "w")
text = writer.write(translator.braille_to_english(braille))
writer.close

p "Created #{output} containing #{text} characters"
