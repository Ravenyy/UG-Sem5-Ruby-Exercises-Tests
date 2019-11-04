require 'rspec/core'
require_relative '../lib/matrix'
require 'simplecov'
SimpleCov.start

matrix = Matrix.new "t e m p"
RSpec.describe Matrix do
  describe "matrix" do
    it 'extracts a row' do
      matrix = Matrix.new("1 2\n10 20")
      expect(matrix.rows[0]).to eq([1, 2])
    end
    it 'extracts other row' do
      matrix = Matrix.new("9 8 7\n19 18 17")
      expect(matrix.rows[1]).to eq([19, 18, 17])
    end
    it 'extracts a column' do
      matrix = Matrix.new("1 2 3\n4 5 6\n7 8 9\n 8 7 6")
      expect(matrix.columns[0]).to eq([1, 4, 7, 8])
    end
    it 'extracts other column' do
      matrix = Matrix.new("89 1903 3\n18 3 1\n9 4 800")
      expect(matrix.columns[1]).to eq([1903, 3, 4])
    end
  end
end