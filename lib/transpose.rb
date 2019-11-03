=begin
Write your code for the 'Transpose' exercise in this file. Make the tests in
`transpose_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/transpose` directory.
=end
class Transpose
def self.transpose(input)
  arr = input.split("\n")
  align = arr.map(&:size).max
  arr.map { |str| str.tr(' ', '+').ljust(align) }
      .map(&:chars).transpose.map(&:join).map(&:rstrip)
      .join("\n").tr('+', ' ')
end
end
