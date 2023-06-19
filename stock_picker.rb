def stock_picker(prices)
    max_profit = 0 
    best_days = [0,0]

    # Iterate over each day to buy
    (0...prices.length).each do |buy_day|
        # Iterate over each day to sell
        ((buy_day + 1)...prices.length).each do |sell_day|
            profit = prices[sell_day] - prices[buy_day]

        # Update max_profit and best_days if a better profit is found
        if profit > max_profit
            max_profit = profit
            best_days = [buy_day,sell_day]
        end
    end
end

best_days
end

prices = [17, 15, 21, 9, 15, 8, 12, 14, 2]
result = stock_picker(prices)
puts result.inspect
