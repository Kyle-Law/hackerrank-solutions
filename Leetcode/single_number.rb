# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    2 * nums.uniq.sum - nums.sum
end