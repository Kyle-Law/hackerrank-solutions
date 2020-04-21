def cavityMap(grid)
    result = []
    grid.each_with_index do |string,i|
        ar = string.split('').map(&:to_i) #turning string into an array of integer
        unless i == 0 || i == grid.length-1 #Skip first and last array
            for j in 1..ar.length-2 #Skip first and last num
                ar[j] = 100 if ar[j] > ar[j+1] && ar[j] > ar[j-1] && ar[j]> grid[i-1][j].to_i && ar[j] > grid[i+1][j].to_i #compare horizontally and vertically
            end
            ar.each_index{|i| ar[i] = 'X' if ar[i] == 100 } #replacing the large integer with X
        end
        result << ar
    end
    result.map{|i| i.join}
end