# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}

# Best Answer
def max_sliding_window(arr, k)
    (k..arr.size-1).each_with_object([arr.first(k).max]) do |i,a|
        mx = a.last
        a << (arr[i-k] < mx ? [mx, arr[i]] : arr[i-k+1, k]).max
      end
end

# My Answer
def max_sliding_window(nums, k)
    result = []
      for i in 0..nums.length-k do
        result << nums[i,k].max
      end
      result
end