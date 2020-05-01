# @param {Integer[]} nums
# @return {Integer}
def find_numbers(nums)
    nums.count{|i| i.to_s.size.even?}
end

# Runtime beats 95% of Ruby submission (Same answer got 45%)