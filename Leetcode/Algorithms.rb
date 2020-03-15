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

# p [1,2,3] & [3,4,5]

# @param {Integer[][]} matrix
# @return {Integer[]}

# Lucky Numbers in a Matrix
# Given a m * n matrix of distinct numbers, return all lucky numbers in the matrix in any order.

# A lucky number is an element of the matrix such that it is the minimum element in its row and maximum in its column.
def lucky_numbers (matrix)
    min_rows = matrix.map{|ar| ar.min}
    max_cols = []
    i = 0
    while i < matrix[0].length do
        empty=[]
        matrix.each{|ar| empty << ar[i]}
        max_cols << empty
        i+=1
    end
    max_cols = max_cols.map{|ar| ar.max}
    max_cols & min_rows
end