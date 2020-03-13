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

