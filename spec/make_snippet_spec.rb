require 'make_snippet'

RSpec.describe "make_snippet method" do
    context "given an empty string" do
        it "Returns an empty string" do
         expect(make_snippet("")).to eq ""
        end 
    end

    context "given a string of four words" do
        it "returns that string" do
            expect(make_snippet("one two three four")).to eq "one two three four"
        end
    end

    context "given a string of six words" do
        it "returns first five words + ..." do
            expect(make_snippet("one two three four five six")).to eq "one two three four five..."
        end
    end
end

