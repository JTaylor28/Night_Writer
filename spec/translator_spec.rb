require "spec_helper"


RSpec.describe Translator do
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
            expect(translator.english_to_braille(braille)).to eq("hello world")
        end
    end
end