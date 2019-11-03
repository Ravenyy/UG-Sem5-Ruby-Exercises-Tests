require 'rspec/core'
require_relative '../lib/acronym'
require 'simplecov'
SimpleCov.start

ACRONYM_PAIRS = {
  'Portable Network Graphics' => 'PNG',
  'Ruby on Rails' => 'ROR',
  'First In, First Out' => 'FIFO',
  'GNU Image Manipulation Program' => 'GIMP',
  'Complementary metal-oxide semiconductor' => 'CMOS',
  'Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me' => 'ROTFLSHTMDCOALM',
  'Something - I made up from thin air' => 'SIMUFTA'
}.freeze

RSpec.describe Acronym do
  describe ".abbreviate" do
    ACRONYM_PAIRS.each do |given, expected|
      it "shortens #{given} to #{expected}" do
        expect(Acronym.abbreviate(given)).to eq(expected)
      end
    end
  end
end