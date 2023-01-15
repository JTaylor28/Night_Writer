require "spec_helper"


RSpec.describe Translator do
    describe "#english_to_braille" do
        it "translates from English to Braille" do
            string = "Hello world"
            translator = Translator.new
            expect(translator.english_to_braille(string)).to eq("0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0...")
        end
    end
end