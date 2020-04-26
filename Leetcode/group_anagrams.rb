# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
    h = Hash.new([])
    strs.each do |str|
        sorted = str.chars.sort.join
        h[sorted] = h[sorted]+[str]
    end
    h.values
end

# Key takeaways:
# Hash.new(value), value == default value
# 'tan'.chars => ['t','a','n']
# .sort => ['a','n','t']
# .join => 'ant'
# h[sorted] = h[sorted] + [str], h[sorted] = [] initially, and [str] is the original string. 
# h['ant']: ['tan','ant','nat']...
# h.values
# Time Complexity: O(NKlog(N)); Space Complexity: O(NK), where N is length of strs, K is the maximum length of strings in strs