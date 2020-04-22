# @param {Integer} n
# @return {Boolean}
# Write an algorithm to determine if a number n is "happy".

# A happy number is a number defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. Those numbers for which this process ends in 1 are happy numbers.

# Return True if n is a happy number, and False if not.
def is_happy(n)
    ar = [n]
    loop do
        n = n.to_s.split('').map{|i| i.to_i**2}.sum
        return true if n == 1
        break if ar.include?(n)
        ar << n
    end
    false
end

# Fastest solution
# @param {Integer} n
# @return {Boolean}
def is_happy(n)
    seen = {}
    return true if n == 1
  
    while n != 1
      n = n.to_s.chars.sum(0) { |d| d.to_i ** 2 }
      return false if seen[n] == true
  
      seen[n] = true
  
      return true if n == 1
    end
  end