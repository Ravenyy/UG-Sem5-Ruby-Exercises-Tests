require 'rspec/core'
require_relative '../lib/two_fer'
require 'simplecov'
SimpleCov.start

name = "Bartholomew"

RSpec.describe TwoFer do
  describe '.two_fer' do
    it "prints 'One for #{name}, one for me.'" do
      result = TwoFer.two_fer(name)
        expect(result).to eq "One for #{name}, one for me."
    end
  end
end