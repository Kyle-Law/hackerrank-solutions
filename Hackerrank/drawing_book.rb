def pageCount(n, p)

    back_flip = (n/2) - (p/2)
    front_flip = p/2
    [back_flip,front_flip].min
end

# Key takeaway: back_flip = (n/2) - (p/2) rather than (n-p)/2

#Test case: (6,5) => 1; (2,1) => 0

# Long solution :
#   if p == 1 || p == n
#     return 0
#   elsif n.even? && n - p == 1
#     return 1
#   else
#     b = p / 2
#     e = (n - p) / 2
#     return b < e ? b : e
#   end
