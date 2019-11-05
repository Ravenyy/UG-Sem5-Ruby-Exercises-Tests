=begin
Write your code for the 'Run Length Encoding' exercise in this file. Make the tests in
`run_length_encoding_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/run-length-encoding` directory.
=end


class RunLengthEncoding
    def self.encode(input)
        counter = 1
        current = ''
        string = ''
        input.each_char do |char|
            if char == current
                counter += 1
            else
                string += (counter > 1 ? counter.to_s: '') + current
                current = char
                counter = 1
            end
        end
        string += (counter > 1 ? counter.to_s : '') + current
    end

    def self.decode(input)
        if input && input.size > 0
            count = (input[0] != ' ' && input.to_i > 0) ? input.to_i : 1
            wip_string = input.delete_prefix(count.to_s)
            char = wip_string.slice!(0)
            return (char * count) + self.decode(wip_string)
        else
            return ''
        end
    end
end