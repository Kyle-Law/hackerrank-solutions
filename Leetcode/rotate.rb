# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
    k.times {nums.insert(0, nums.pop)}
end

# Runtime: 68 ms, faster than 9.25% of Ruby online submissions for Rotate Array.
# Memory Usage: 9.9 MB, less than 100.00% of Ruby online submissions for Rotate Array.