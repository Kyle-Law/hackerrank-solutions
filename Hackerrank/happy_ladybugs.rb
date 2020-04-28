# Complete the happyLadybugs function below.
def happyLadybugs(b)
    ar = b.split('')
    counts = Hash.new(0)
    ar.each{|char| counts[char]+=1}
    counts['_'] = 2 if counts['_'] == 1
    return 'NO' if counts.values.any?(1)
    if counts['_'] == 0
      ar.each_index do |index|
        return "NO" if (ar[index] != ar[index+1] && ar[index]!= ar[index-1])
      end
    end
    'YES'
end

# Tricky part 'AAABB' and if there's only 1 '_'
# Time: O(n)
# Space: O(n)