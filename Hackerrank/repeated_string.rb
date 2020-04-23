def repeatedString(s, n)
    remainder = n % s.length
    (n/(s.length))*(s.count('a')) + s[0,remainder].count('a')
end
#Key takeaway: a mathematical question. Try to find the mathematical relationship to avoid putting to much stress on memory and complexity.
 
def repeatedString(s, n)
    a_occurences = s.count('a')
    s_length = s.length
    n/s_length*a_occurences + s[0,(n % s_length)].count('a')
end