# def palindromeIndex(s)
#     return -1 if isPalindrome?(s)
#     for i in 0..s.length-1
#         s_dup = s.dup
#         s_dup[i] = ''
#         return i if isPalindrome?(s_dup)
#     end
# end

def isPalindrome?(s)
    s==s.reverse
end

# Key takeaway: 13/14 passed. Runtime error. The worst case scenario happens when the string is long and the index to be removed is the last index

#To improve: Firstly, improve on line 4 & 5, find an efficient method to clone s. Secondly, improve on the iteration, now it's O(n) algorithms. Thirdly, improve the input. 
#Other possible method: #index, #rindex

# More efficient way

def palindromeIndex(str)

    # starting points for the check
      front = 0
      back = str.length - 1
    
    # increment the check points towards each other as long as the checked string is palindromic
      while front < back && str[front] == str[back]
        front += 1
        back -= 1
      end
    
    # if check passes each other, no index needed to be removed, return -1.(The word is already palindrome)
      if front >= back
        return -1
    # else, either the back/front number needed to be removed. 
      else
        return isPalindrome?(str[front...back]) ? back : front
      end
    end