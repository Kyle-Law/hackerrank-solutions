# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    arr = []
    nums.each_index do |i| 
        if nums[i,2].sum == target
            arr << i
            arr << i+1
            break
        end
    end
    arr
end

# p two_sum([2, 7, 11, 15],9)


# p Array.new(5) {|i| i+=5}
# 5.times{|i| p i}

# HackTheInterview Global Challenge 2 - Maximum Streaks

def getMaxStreaks(toss)
    # Return an array of two integers containing the maximum streak of heads and tails respectively
    return [toss.count('Heads'),0] if toss.count('Tails').zero?
    return [0,toss.count('Tails')] if toss.count('Heads').zero?
    [(toss.join.split('Tails').max.length / 5) , (toss.join.split('Heads').max.length / 5) ]
end

# Key takeaway: #join and #split to find maximum consecutive length. Brilliant!