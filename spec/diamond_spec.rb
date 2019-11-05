require 'rspec/core'
require_relative '../lib/diamond'


RSpec.describe Diamond do
  describe '.make_diamond(letter)' do
    it 'creates proper diamond for A' do
      expect(Diamond.make_diamond("A")).to eq("A\n")
    end
    it 'creates proper diamond out of C' do
      string =  "  A  \n"\
                " B B \n"\
                "C   C\n"\
                " B B \n"\
                "  A  \n"
      expect(Diamond.make_diamond("C")).to eq(string)
    end
    it 'creates proper diamont out of E' do
      string =  "    A    \n"\
                "   B B   \n"\
                "  C   C  \n"\
                " D     D \n"\
                "E       E\n"\
                " D     D \n"\
                "  C   C  \n"\
                "   B B   \n"\
                "    A    \n"
      expect(Diamond.make_diamond("E")).to eq(string)
    end
  end
end