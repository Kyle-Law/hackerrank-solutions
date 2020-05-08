# @param {String} s
# @return {Boolean}
def check_valid_string(s)
    ar = []
    for i in 0..s.size-1
        ar << s[i]
        if ar[i] == ')' && ar[i-1] == '('
            ar.pop
            ar.pop
        end
    end
    ar
end

# p check_valid_string('()')
# p ''.empty?
#"(())((())()()(*)(*()(())())())()()((()())((()))(*"
test = '(())((())()()(*)(*()(())())())()()((()())((()))(*'
# p test.gsub!(/\(\)/,'')
# p test.gsub!(/\(\)/,'')
# p test
# p test.scan(/\(\)/)
# p [].empty?
# loop do
#     test.gsub(/\(\)/,'')
# end

def check_valid_string(s)
    loop do
        s.gsub!(/\(\)|\(\*\)/,'')
        break if s.scan(/\(\)|\(\*\)/).empty?
    end
    return false if s.count('(') > s.count(')') + s.count('*')
    return false if s.count(')') > s.count('(') + s.count('*')
    true
end

p check_valid_string(test)
# p '((*'.count('(')
