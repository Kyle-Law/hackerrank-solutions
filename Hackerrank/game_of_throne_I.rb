def gameOfThrones(s)
    hash = Hash.new(0)
    s.chars.each{|i| hash[i]+=1}
    hash.values.count{|i| i.odd?} > 1 ? 'NO' : 'YES'

    # char_count = s.chars.reduce(Hash.new(0)) {|memo, val| memo[val]+=1; memo}
end

# Using #chars instead of #split(')
def gameOfThrones(s)
    hash = Hash.new(0)
    s.chars.each{|i| hash[i]+=1}
    hash.values.count{|i| i.odd?} > 1 ? 'NO' : 'YES'
end

# gameOfThrones('aaabbbb')

#Using #reduce
def gameOfThrones(s)
    char_count = s.chars.reduce(Hash.new(0)) {|memo, val| memo[val]+=1; memo}
    char_count.values.count{|i| i.odd?} > 1 ? 'NO' : 'YES'
end