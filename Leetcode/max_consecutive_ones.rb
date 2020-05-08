# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
    local_max = global_max = 0
    nums.each do |i|
        i == 1 ? local_max +=1 : local_max = 0
        global_max = [global_max,local_max].max
    end
    global_max
end

# Runtime beat 79.23% of Ruby submissions