=begin
Write your code for the 'Grains' exercise in this file. Make the tests in
`grains_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/grains` directory.
=end

class Grains

	def self.square(n)
		if n < 1 || n > 64
		  raise(ArgumentError)
		end
		2 ** (n-1)
	end   

	def self.total
		sum = 0
		64.times do |i|
			sum += square(i+1)
		end
		sum
	end

end    
