# @param {Integer[]} arr
# @return {Void} Do not return anything, modify arr in-place instead.
def duplicate_zeros(arr)
    i=0
    while i < arr.size-1
        if arr[i]==0
            arr.insert(i,0)
            arr.pop
            i+=1
        end
        i+=1
    end
end

# Beat 84% of ruby submission
# Look carefully the return. Return nothing, modify the input. 