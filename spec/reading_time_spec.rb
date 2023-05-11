require 'reading_time'

RSpec.describe "calculate_reading_time method" do
    context "given an empty string" do
        it "returns zero" do
            expect(calculate_reading_time("")).to eq 0
        end
    end

    context "given a text of under two hundred words" do
        it "returns 1" do
            expect(calculate_reading_time("one two")).to eq 1
        end
    end

    context "given a text of two hundred words" do
        it "returns 1" do
            expect(calculate_reading_time("one " * 200)).to eq 1
        end
    end

    context "given a text of three hundred words" do
        it "returns 2" do
            expect(calculate_reading_time("one " * 300)).to eq 2
        end
    end

    context "given a text of four hundred words" do
        it "returns 2" do
            expect(calculate_reading_time("one " * 400)).to eq 2
        end
    end

    context "given a text of five thousand words" do
        it "returns 25" do
            expect(calculate_reading_time("one " * 5000)).to eq 25
        end
    end



    
end
