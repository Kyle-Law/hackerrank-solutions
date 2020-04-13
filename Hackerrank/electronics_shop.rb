def getMoneySpent(keyboards, drives, b)
    possible =  keyboards.product(drives).map(&:sum).select{|sum| sum<=b}
    possible.empty? ? -1 : possible.max
end