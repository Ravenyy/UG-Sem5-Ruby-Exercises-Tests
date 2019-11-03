require 'rspec/core'
require_relative '../lib/hamming'
require 'simplecov'
SimpleCov.start

RSpec.describe Hamming do
  describe ".compute(1st, 2nd)" do
      it "returns 0 for empty" do
        first = ''
        second = ''
        expect(Hamming.compute(first, second)).to eq 0
      end
      it "returns 0 for same strings" do
        first = 'AAET'
        second = 'AAET'
        expect(Hamming.compute(first, second)).to eq 0
      end
      it "returns 1 whenever it should" do
        first = 'AAET'
        second = 'AATT'
        expect(Hamming.compute(first, second)).to eq 1
      end
      it "returns returns other numbers as well" do
        first = 'GGACGGATTCTG'
        second = 'AGGACGGATTCT'
        expect(Hamming.compute(first, second)).to eq 9
      end
      it "raises error when first.length < second.length" do
        first = 'GGACGGATG'
        second = 'AGGACGGATTCT'
        expect{Hamming.compute(first, second)}.to raise_error(ArgumentError)
      end
      it "raises error when first.length > second.length" do
        first = 'AGGACGGATTCT'
        second = 'GGACGGATG'
        expect{Hamming.compute(first, second)}.to raise_error(ArgumentError)
      end
  end
end 