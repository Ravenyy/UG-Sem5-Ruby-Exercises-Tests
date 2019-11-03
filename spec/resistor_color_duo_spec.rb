require 'rspec/core'
require_relative '../lib/resistor_color_duo'
require 'simplecov'
SimpleCov.start

RSpec.describe ResistorColorDuo do
  describe ".value(stripes)" do
    it "shows good number" do
      arg = ['brown', 'black']
      expect(ResistorColorDuo.value(arg)).to eq 10
    end
    it "shows good number again" do
      arg = ['blue', 'grey']
      expect(ResistorColorDuo.value(arg)).to eq 68
    end
    it "shows good number one more time" do
      arg = ['yellow', 'violet']
      expect(ResistorColorDuo.value(arg)).to eq 47
    end
    it "shows good number for the last time" do
      arg = ['orange', 'orange']
      expect(ResistorColorDuo.value(arg)).to eq 33
    end
    it "skips third argument" do
      arg = ['green', 'brown', 'orange']
      expect(ResistorColorDuo.value(arg)).to eq 51
    end
  end
end 