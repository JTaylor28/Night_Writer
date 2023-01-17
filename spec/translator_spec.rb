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
            expect(translator.english_to_braille(english)).to eq("0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0...\n")
        end
    end

    describe "#make_character_row" do 
        it "returns a sting of braille characters based off given index position and ignorse nil vales" do
            english = ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d", "!"]
            expect(translator.make_character_row(english, 0)).to eq "0.0.0.0.0....00.0.0.00"
        end
    end

    describe "#braille_to_english" do
        it "translates from Braille to english" do
            braille = "0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0..."
            expect(translator.braille_to_english(braille)).to eq("hello world")
        end
    end

end