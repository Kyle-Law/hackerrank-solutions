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

# HackTheInterview Global Challenge 2 Q2 - Maximum Streaks

def getMaxStreaks(toss)
    # Return an array of two integers containing the maximum streak of heads and tails respectively
    return [toss.count('Heads'),0] if toss.count('Tails').zero?
    return [0,toss.count('Tails')] if toss.count('Heads').zero?
    [(toss.join.split('Tails').max.length / 5) , (toss.join.split('Heads').max.length / 5) ]
end

# Key takeaway: #join and #split to find maximum consecutive length. Brilliant!

# HackTheInterview Global Challenge 2, Q3 - Determine the Winner

def getRoundResult(winning_suit, suit1, number1, suit2, number2)
    # Write your code here
    return 'Player 1 wins' if suit1 == winning_suit && suit2 != winning_suit
    return 'Player 2 wins' if suit2 == winning_suit && suit1 != winning_suit
    if (suit1 == winning_suit && suit2 == winning_suit) || (suit1 != winning_suit && suit2 != winning_suit)
        if number1 > number2
            return 'Player 1 wins'
        elsif number2 > number1
            return 'Player 2 wins'
        else
            return 'Draw'
        end
    end
end