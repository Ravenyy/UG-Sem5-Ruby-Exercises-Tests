=begin
Write your code for the 'Diamond' exercise in this file. Make the tests in
`diamond_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/diamond` directory.
=end

module Diamond
    ALPHABET = ('A'..'Z').to_a.join
    def self.make_diamond(letter)
      raise ArgumentError unless ALPHABET.include? letter
  
      n = ALPHABET.index(letter)
  
      zig_zag = ((0..n).to_a + (n - 1).downto(0).to_a)
  
      zig_zag.map do |i|
        arr = ' ' * (2 * n + 1) + "\n"
        arr[n - i] = arr[n + i] = ALPHABET[i]
        arr
      end.join
    end
  end