def subarray_sum(nums, k)
    count = 0 
    nums.each_index do |i|
        ar = [nums[i]]
        count += 1 if ar.sum == k
        for j in i+1..nums.size-1
            ar << nums[j]
            p "#{ar.sum}, #{nums[j+1]}"
            break if ar.sum > k && (nums[j+1].nil? || nums[j+1]>=0)
            count += 1 if ar.sum == k
        end
    end
    count
end

p subarray_sum([28,54,7,-70,22,65,-6],100)