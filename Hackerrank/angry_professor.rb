def angryProfessor(k, a)
    a.count{|i| i<=0} >= k ? 'NO' : 'YES'
end

#Key takeaway: #count can accept block