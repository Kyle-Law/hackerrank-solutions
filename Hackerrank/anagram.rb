def anagram(s)
    return -1 if s.length.odd?
    a,b = s.split('').each_slice(s.length/2).to_a
    a.each{|elem| b.delete_at(b.index(elem)) if b.include?(elem)}
    b.length
end

# Methods Used: #each_slice to split array. eg([1,2,3,4,5,6].each_slice(3) => [[1,2,3],[4,5,6]]), #delete_at(index), #include?, split('')
# Key takeaway: not necessary to use #each_slice, any methods to split left and right part will do.