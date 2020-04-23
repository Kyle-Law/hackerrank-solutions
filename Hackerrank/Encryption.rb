def encryption(s)
    clean_s = s.gsub(/\s+/, '')
    s_length = clean_s.size
    ceil = (s_length**0.5).ceil 
    floor = (s_length**0.5).floor
    grid = clean_s.split('').each_slice(ceil).to_a
    while grid[-1].size < ceil
        grid[-1]<<' '
    end
    tranpose_grid = grid.transpose
    result = ''
    tranpose_grid.each do |ar|
        string = ar.join.gsub(/\s+/, '')
        result << string + ' '
    end
    result
end

Key takeaway: tranpose can only be work on matrix with same row and column; each_slice can be used on array to turn array into matrix based on column restriction.