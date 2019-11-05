=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end


class Matrix
    def initialize(string)
      @matrix = extract(string)
    end
  
    def rows
      @matrix
    end
  
    def columns
      @matrix.transpose
    end

    def extract(string)
      string.lines.map{|l| l.split().map(&:to_i)}
    end
  end