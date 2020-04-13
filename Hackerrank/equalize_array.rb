def equalizeArray(arr)
    def max_occurences(arr) #find the integer that occured the most
        freq = arr.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
        arr.max_by { |v| freq[v] }
    end
    preserved = max_occurences(arr)
    count_mode = arr.count(preserved)
    arr.length - count_mode
end

#Key takeaway: max_occurences helper method is pretty helpful when solving this algo.