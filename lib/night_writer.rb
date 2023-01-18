require './lib/translator'

output = ARGV[1]

reader = File.open(ARGV[0], 'r')
english = reader.read
reader.close

translator = Translator.new

writer = File.open(ARGV[1], "w")
braille = writer.write(translator.english_to_braille(english))
writer.close

p "Created #{output} containing #{braille} characters"
