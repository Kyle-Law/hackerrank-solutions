def hurdleRace(k, height)
    [height.max - k,0].max
end

#Key takeaway, if the max of height is less than k (jump naturally) then height.max-k is negative