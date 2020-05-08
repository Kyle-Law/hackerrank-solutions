def divisibleSumPairs(n, k, ar)
    ar.combination(2).to_a.count{|ar| ar.sum % k == 0}
end