class Translator
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
        english = english.downcase
        english_array = english.split("")
        line1 = ""
        english_array.each do |letter|
            line1 += @alphabet[letter][0]
        end
        line2 = ""
        english_array.each do |letter|
            line2 += @alphabet[letter][1]
        end
        line3 = ""
        english_array.each do |letter|
            line3 += @alphabet[letter][2]
        end
        braille = line1 +"\n"+ line2 +"\n"+ line3
    end
end