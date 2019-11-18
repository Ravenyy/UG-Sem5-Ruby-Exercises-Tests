require 'rspec/core'
require_relative '../lib/gigasecond'


RSpec.describe Gigasecond do
  it "Shows either it's doing good with date alone" do
    expect(Gigasecond.from(Time.utc(2011, 4, 25, 0, 0, 0))).to eq(Time.utc(2043, 1, 1, 1, 46, 40))
  end
  it "Shows either it's doing good with only date and time" do
    expect(Gigasecond.from(Time.utc(1959, 7, 19, 0, 0, 0))).to eq(Time.utc(1991, 3, 27, 1, 46, 40))
  end
  it "Shows either it's doing good with full time specification" do
    expect(Gigasecond.from(Time.utc(2015, 1, 24, 22, 0, 0))).to eq(Time.utc(2046, 10, 2, 23, 46, 40))
  end
end