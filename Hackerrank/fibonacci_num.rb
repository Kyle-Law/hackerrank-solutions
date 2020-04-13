def fibonacci(n)
    a = 1
    b = 1
    return 1 if n == 1 
    n+fibonacci(n-1)
end

# p fibonacci(2)

def sockMerchant(n, ar)
    removed = ar.select{|i| !ar.one?(i)}
    ans =removed.length / 2
    ans.even? ? ans : ans -1
end
ar = %w[6 5 2 3 5 2 2 1 1 5 1 3 3 3 5].sort.map(&:to_i) #ans = 6
ar.select! {|i| ar.count(i).even?}
# p ar
# ar = [1,2,1,2,1,3,2].sort
# p ar.select{|i| !ar.one?(i)}

# p sockMerchant(15,ar)
p 3/2

