def stock_picker(stock_arr)
    lowest_price = stock_arr[0]
    lowest_price_index = 0
    highest_profit = 0
    best_day = [0, 0]

    stock_arr.each_with_index do |price, index|
        if price < lowest_price
            lowest_price = price
            lowest_price_index = index
            next
        end

        current_profit = price - lowest_price
        if current_profit > highest_profit
            highest_profit = current_profit
            best_day = [lowest_price_index, index]
        end
    end

    best_day
end

stock_picker([17,3,6,9,15,8,6,1,10])
