# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
    loop do
        max1,max2 = stones.max_by(2) {|i| i}
        index1 = stones.find_index(max1)
        index2 = stones.find_index(max2)
        if max1 == max2
            stones.delete_at(index1)
        else
            stones[index1] = max1-max2
        end
        stones.delete_at(index2)
        break if stones.size <= 1
    end
    stones[0] || 0
end


# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
    loop do
        stones.sort!
        max1,max2 = [stones[-1],stones[-2]]
        if max1 == max2
            stones.pop
            stones.pop
        else
            stones[-1] = max1-max2
            stones.delete_at(-2)
        end
        break if stones.size <= 1
    end
    stones[0] || 0
end

p last_stone_weight([1,1,3,3,4,4,32])
