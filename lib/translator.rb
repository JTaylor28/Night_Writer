class Translator
    attr_reader :alphabet

    def initialize

        @alphabet = {
            "a" => ["0.","..",".."],
            "b" => ["0.","0.",".."],
            "c" => ["00","..",".."],
            "d" => ["00",".0",".."],
            "e" => ["0.",".0",".."],
            "f" => ["00","0.",".."],
            "g" => ["00","00",".."],
            "h" => ["0.","00",".."],
            "i" => [".0","0.",".."],
            "j" => [".0","00",".."],
            "k" => ["0.","..","0."],
            "l" => ["0.","0.","0."],
            "m" => ["00","..","0."],
            "n" => ["00",".0","0."],
            "o" => ["0.",".0","0."],
            "p" => ["00","0.","0."],
            "q" => [".0","00","00"],
            "r" => ["0.","00","0."],
            "s" => [".0","0.","0."],
            "t" => [".0","00","0."],
            "u" => ["0.","..","00"],
            "v" => ["0.","0.","00"],
            "w" => [".0","00",".0"],
            "x" => ["00","..","00"],
            "y" => ["00",".0","00"],
            "z" => ["0.",".0","00"],
            " " => ["..","..",".."]
        }
    end


    def english_to_braille(english)
        english = english.downcase.delete("\n")
        english_array = english.split("")
        row1 = make_character_row(english_array, 0)
        row2 = make_character_row(english_array, 1)
        row3 = make_character_row(english_array, 2)
        braille = row1 +"\n"+ row2 +"\n"+ row3 +"\n"
    end
    
    #grabs key value base off of given index possiton
    #and returns a string of those index values
    
    def make_character_row(english_input,row)
        # row_collector = ""
        # english_input.each do |letter|
        #     row_collector += @alphabet[letter][row]
        # end
        # row_collector
        x= english_input.filter_map do |letter|
            @alphabet[letter][row] if @alphabet.key?(letter)
        end.join
        require 'pry'; binding.pry
    end

    def braille_to_english(braille)
        braille_lines = get_braille_lines(braille)
        char_array = get_braille_characters(braille_lines)
        english = ""
        char_array.each do |char|
            english += @alphabet.key(char)
        end
        english
    end

    def get_braille_lines(braille)
        braille_lines = braille.split("\n")
        line1 = braille_lines[0]
        line2 = braille_lines[1]
        line3 = braille_lines[2]
        line1_array = line1.chars.each_slice(2).map(&:join)
        line2_array = line2.chars.each_slice(2).map(&:join)
        line3_array = line3.chars.each_slice(2).map(&:join)
        lines = [line1_array, line2_array, line3_array]
    end

    def get_braille_characters(lines)
        char_array = []
        lines[0].length.times do |i|
            char = [lines[0][i], lines[1][i], lines[2][i]]
            char_array.push(char)
        end
        char_array
    end

    # def edgecase_checker(text)
    #     text = text.downcase 
    # end
end
