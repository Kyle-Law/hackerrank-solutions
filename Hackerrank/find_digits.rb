def findDigits(n)
    digits = n.to_s.split('').map(&:to_i)
    digits.count{|i| n%i==0 if i != 0}
end