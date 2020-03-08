=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
    def initialize(string)
        @string = string
    end

    def slices(n)
        arr = []
        raise ArgumentError if n>@string.length
        for i in 0..@string.length-n
            arr << @string[i,n]
        end
        arr
    end
end