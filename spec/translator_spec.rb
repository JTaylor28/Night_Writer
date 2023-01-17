require "spec_helper"


RSpec.describe Translator do

    let(:translator) {Translator.new}

    describe "#initialize" do
        it "exists" do 
            expect(translator).to be_a(Translator)
        end
        
        it "has an alphabet with english and braille characters " do

            expected = {
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
            expect(translator.alphabet).to eq(expected) 
        end
             
    end

    describe "#english_to_braille" do
        it "translates from English to Braille" do
            english = "Hello world"
            translator = Translator.new
            expect(translator.english_to_braille(english)).to eq("0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0...")
        end
    end

    describe "#braille_to_english" do
        it "translates from Braille to english" do
            braille = "0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0..."
            translator = Translator.new
            expect(translator.braille_to_english(braille)).to eq("hello world")
        end
    end

    describe "#make_character_row" do 
        it " makes a row of braille character based on index position" do
            expect(Translator.make_character_row(0)).to eq("0")
        end
    end

end