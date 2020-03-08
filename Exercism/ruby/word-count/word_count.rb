=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase
    def initialize(str)
        word_boundary = /\b[\w']+\b/
        @str = str.downcase.scan(word_boundary)
      end
    
      def word_count
        @str.each_with_object(Hash.new(0)) do |item, hash|
          hash[item] += 1
        end
      end
    # def word_count
    #     array = @phrase.downcase.split(/\b[\w']+\b/)
    #     ans = Hash.new(0)
    #     array.each{|i| ans[i] = array.count(i) unless i.empty?}
    #     ans
    # end
end

#Failed on apostrophes and quotations

p "First: don't laugh. Then: don't cry.".downcase.scan(/\b[\w']+\b/)