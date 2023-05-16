require 'grammar_stats'

RSpec.describe GrammarStats do
    describe "check method" do
        it "fails when passed an empty sentence" do
            grammar_check = GrammarStats.new
            expect { grammar_check.check("") }.to raise_error "Not a sentence."
        end
        
        it "returns true when passed a valid sentence" do
            grammar_check = GrammarStats.new
            expect(grammar_check.check("Hello, my name is Jess.")).to eq true
        end

        it "returns false when passed a sentence that doesn't start with a capital letter" do
            grammar_check = GrammarStats.new
            expect(grammar_check.check("hello, my name is Jess.")). to eq false
        end
        
        it "returns false when sentence doesn't end with punctuation" do
            grammar_check = GrammarStats.new
            expect(grammar_check.check("Hello, my name is Jess")).to eq false
        end

        it "returns true when sentence ends with an exclamation mark" do
            grammar_check = GrammarStats.new
            expect(grammar_check.check("Hello, my name is Jess!")).to eq true
        end

        it "returns poor grammar message" do
            grammar_check = GrammarStats.new
            expect(grammar_check.check("Hello, my name is Jess,")).to eq false
        end
    end

    describe "percentage_good method" do
        it "fails if no checks have been done" do
            grammar_check = GrammarStats.new
            expect { grammar_check.percentage_good }.to raise_error "No checks done yet."
        end

        it "returns 100 after one correct check" do
            grammar_check = GrammarStats.new
            grammar_check.check("Hello, my name is Jess.")
            expect(grammar_check.percentage_good).to eq 100
        end

        it "returns 50 after 1 true and one false check result" do
            grammar_check = GrammarStats.new
            grammar_check.check("Hello, my name is Jess.")
            grammar_check.check("Hello, my name is Jess")
            expect(grammar_check.percentage_good).to eq 50
        end

        it "returns 0 after 2 false results" do
            grammar_check = GrammarStats.new
            grammar_check.check("hello, my name is Jess")
            grammar_check.check("Hello, my name is Jess,")
            expect(grammar_check.percentage_good).to eq 0
        end    
    end
 
end

