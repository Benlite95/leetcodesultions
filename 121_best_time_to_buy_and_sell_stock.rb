def max_profit(prices)
    min = prices[0]
    biggest_diff = 0 
    prices.each_with_index do |price,i|
      biggest_diff = [biggest_diff,price - min].max
      min = [min,price].min
    end
    biggest_diff
  end