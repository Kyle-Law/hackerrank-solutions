# Complete the howManyGames function below.
def howManyGames(p, d, m, s)
    # Return the number of games you can buy
    count = 0
    loop do
        if p == m
          count+= (s / p)
          break
        end
        s-= p
        s > 0 ? count += 1 : break
        (p-d)>=m ? p=p-d : p = m
    end
    count
end