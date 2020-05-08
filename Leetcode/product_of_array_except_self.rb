def product_except_self(nums)
    result = []
    nums.each_index do |i|
        clone = nums.dup
        clone.delete_at(i)
        result << clone.inject(:*)
    end
    result
end

# 17/18 passed. O(n^2) Time Complexity because of inject and each_with_index loops

p [0]*5
p 5..1