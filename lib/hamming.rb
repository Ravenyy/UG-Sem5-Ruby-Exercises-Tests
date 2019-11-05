=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end


class Hamming
    def self.compute(first, second)
        if first.length != second.length
            raise ArgumentError
        end
        hamming = 0
        second_chars = second.split(//)
        first.each_char.with_index do |c, index|
            if second_chars[index] != c
                hamming += 1
            end
        end
        return hamming
    end
end