![image](https://user-images.githubusercontent.com/55923773/76694167-86c8c700-66aa-11ea-90e1-13e48c4acb31.png)
```
# @param {Integer[][]} matrix
# @return {Integer[]}
def lucky_numbers (matrix)
    min_rows = matrix.map{|ar| ar.min}
    max_cols = []
    i = 0
    while i < matrix[0].length do
        empty=[]
        matrix.each{|ar| empty << ar[i]}
        max_cols << empty
        i+=1
    end
    max_cols = max_cols.map{|ar| ar.max}
    max_cols & min_rows
end
```
