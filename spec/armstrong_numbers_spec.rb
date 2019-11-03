require 'rspec/core'
require_relative '../lib/armstrong_numbers'
require 'simplecov'
SimpleCov.start

RSpec.describe ArmstrongNumbers do
  describe ".include(number)" do
    it "checks if zero is an armstrong number" do
      expect(ArmstrongNumbers.include?(0)).to be true
    end
    it "checks if single digit number is an armstrong number" do
      expect(ArmstrongNumbers.include?(5)).to be true
    end
    it "checks if two digits number is an armstrong number" do
      expect(ArmstrongNumbers.include?(10)).to be false
    end
    it "checks if three digits number is an armstrong number" do
      expect(ArmstrongNumbers.include?(153)).to be true
    end
    it "checks if three digits number isn't an armstrong number" do
      expect(ArmstrongNumbers.include?(100)).to be false
    end
    it "checks if four digit number is an armstrong number" do
      expect(ArmstrongNumbers.include?(9474)).to be true
    end
    it "checks if four digit number isn't an armstrong number" do
      expect(ArmstrongNumbers.include?(9475)).to be false
    end
    it "checks if seven digit number is an armstrong number" do
      expect(ArmstrongNumbers.include?(9926315)).to be true
    end
    it "checks if seven digit number isn't an armstrong number" do
      expect(ArmstrongNumbers.include?(9926314)).to be false
    end
  end
end