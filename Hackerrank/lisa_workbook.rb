def workbook(n, k, arr) #n = number of chapters, k = max probs per page, arr = arr of integers that denote the number of problems in each chapters (n == arr.size)
    pages = [["notthing"]]
    special = 0
    arr.each do |i|
        pages << Array.new(i) {|j| j+1} if i<=k
        if i>k
            ((i.to_f/k).ceil).times do |round|
                round == (i.to_f/k).ceil - 1 && i%k != 0 ? pages << Array.new(i%k) {|j| j+1+round*k} : pages << Array.new(k) {|j| j+1+round*k}
            end
        end
    end
    pages.each_with_index{|v,i| special+=1 if v.include?(i)}
    special
end

# p workbook(5,3,[4,2,6,1,10]) #=> 4

# Difficulty: 4.5/5
# Key takeaway: Array.new(n,c) => building an array with n length, each takes value of c. Array.new(n) {|i| i} => |i| block variable refers to index (i.e. 0..n), eg. Array.new(5){|i| i} => [0,1,2,3,4]. #n.times {|i| puts i}, |i| in #times refers to index as well (i.e. 0..n).  I created a multi-array representing pages and their respective questions.
# Methods used: #each_with_index, #include?, #Array.new, #ceil, #times
