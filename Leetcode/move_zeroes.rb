# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    zero_count = nums.count(0)
    nums.delete(0)
    zero_count.times do
        nums << 0
    end
    nums
end

p move_zeroes([1,0,2,3,0])