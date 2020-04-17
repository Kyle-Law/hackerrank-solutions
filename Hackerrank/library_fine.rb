def libraryFine(d1, m1, y1, d2, m2, y2)
    return 10000*(y1-y2) if y1>y2
    return 500*(m1-m2) if m1>m2 && y1==y2
    return 15*(d1-d2) if d1>d2 &&m1==m2 && y1==y2
    0
end

#Key Takeaway: yeah quite easy..? 
def libraryFine(d1, m1, y1, d2, m2, y2)
    if y1>y2
        10000*(y1-y2)
    elsif m1>m2 && y1==y2
        500*(m1-m2)
    elsif d1>d2 &&m1==m2 && y1==y2
        15*(d1-d2)
    else
        0
    end
end