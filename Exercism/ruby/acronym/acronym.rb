=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

class Acronym
    def self.abbreviate(string)
        acronym = []
        arr = string.split(/\s|-/)
        arr.each{|i| acronym<<i[0].upcase unless i.empty?}
        acronym.join
    end
end

# p 'Something - I made up from thin air'.split(/\s|-/)
# p "".empty?
# p "asdf"[0].upcase
# p ["A","b"].join

p Acronym.abbreviate('Something - I made up from thin air')
p Acronym.abbreviate('Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me')