def beautifulTriplets(d, arr)
    count = 0
    arr.each do |i|
        count+= 1 if arr.include?(i+d) && arr.include?(i+d+d)
    end
    count
end