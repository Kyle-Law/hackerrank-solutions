# @param {Integer[]} nums
# @return {Integer}
# Kadane method
def max_sub_array(nums)
    global_max = nums[0]
    local_max = nums[0]
    nums[1..-1].each do |n|
        local_max = [n, n+local_max].max
        global_max = local_max if local_max > global_max
    end
    global_max
end

p max_sub_array([-2,1,-3,4,-1,2,1,-5,4])