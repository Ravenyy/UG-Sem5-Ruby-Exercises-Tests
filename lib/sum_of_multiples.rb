=begin
Write your code for the 'Sum Of Multiples' exercise in this file. Make the tests in
`sum_of_multiples_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sum-of-multiples` directory.
=end


class SumOfMultiples
    def initialize(*args)
        @args = args
    end

    def to(number)
        if @args.empty? || @args == [0]
            return 0
        end

        multiples = []
        @args.each do |arg|
            (0...number).to_a.select do |a|
                if a % arg == 0
                    multiples.push(a)
                end
            end
        end
        return multiples.uniq.inject(:+)
    end
end