# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    profit = 0
    for i in 0..prices.size-1
        buy ||= prices[i] if i != prices.size-1 && prices[i] < prices[i+1]
        if buy && (i == prices.size-1 || prices[i] >= prices[i+1])
            sell = prices[i]
            profit += (sell - buy)
            buy = nil
        end
    end
    profit
end

# Time: O(n) , Space: O(n)

p max_profit([7,1,5,3,6,4])