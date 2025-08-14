def max_profit(prices)
  min_price = Float::INFINITY
  max_profit = 0

  prices.each do |price|
    if price < min_price
      min_price = price
    else
      profit = price - min_price
      if profit > max_profit
        max_profit = profit
      end
    end
  end

  max_profit
end