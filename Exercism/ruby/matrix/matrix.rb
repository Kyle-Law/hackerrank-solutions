=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix
    def initialize(string)
        @string = string
    end

    def rows
        @string.split("\n").map{|s| s.split(' ')}.map{|a| a.map(&:to_i)}
    end

    def columns
        col = []
        # row = @string.split("\n").map{|s| s.split(' ')}.map{|a| a.map(&:to_i)}
        row_length = rows[0].length
        for i in 0..row_length-1
            col << rows.map{|j| j[i]}
        end
        col
    end
end

# row =  "89 1903 3\n18 3 1\n9 4 800".split("\n").map{|s| s.split(' ')}.map{|a| a.map(&:to_i)}
# p row
# p row.map{|i| i[0]}