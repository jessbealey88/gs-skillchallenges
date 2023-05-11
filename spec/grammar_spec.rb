require 'grammar'

RSpec.describe "grammar_checker method" do
    context "given an empty string" do
        it "fails" do
            expect { grammar_checker("") }.to raise_error "Not a sentence."
        end
    end

    context "given a sentence starting with capital letter and ending in full stop" do
        it "returns good grammar message" do
            expect(grammar_checker("Hello, my name is Jess.")).to eq "This text has good grammar."
        end
    end

    context "given a sentence without a capital letter" do
        it "returns poor grammar message" do
            expect(grammar_checker("hello, my name is Jess.")). to eq "This text has poor grammar."
        end
    end

    context "given a sentence without a fullstop" do
        it "returns poor grammar message" do
            expect(grammar_checker("Hello, my name is Jess")).to eq "This text has poor grammar."
        end
    end
    
    context "given a sentence starting with capital and ending in exclamation mark" do
        it "returns good grammar message" do
            expect(grammar_checker("Hello, my name is Jess!")).to eq "This text has good grammar."
        end
    end

    context "given a sentence ending with innappropriate punctuation" do
        it "returns poor grammar message" do
            expect(grammar_checker("Hello, my name is Jess,")).to eq "This text has poor grammar."
        end
    end
end

