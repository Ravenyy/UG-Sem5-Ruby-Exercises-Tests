=begin
Write your code for the 'Pythagorean Triplet' exercise in this file. Make the tests in
`pythagorean_triplet_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/pythagorean-triplet` directory.
=end

class Triplet
  attr_reader :sum, :product
  
  def initialize(*arr)
    @arr = arr
    @sum = arr.sum
    @product = arr.reduce(:*)
  end
  
  def pythagorean?
    @arr.take(2).reduce(0) {|memo, item| memo + item ** 2} == @arr.last ** 2
  end
  
  def self.where(min_factor: 1, max_factor:, sum: nil)
    (min_factor..max_factor)
      .to_a
      .combination(3)
      .map {|item| Triplet.new(*item)}
      .select {|item| item.pythagorean? && (sum.nil? || item.sum == sum)}
  end
end