def stock_picker(prices)
  if prices.length < 2
    puts "At least 2 or more prices are required"
    return nil
  end
  
  high = 0
  low = 0
  profit = 0
  prices[0..-2].each_with_index do |buy, i|
    puts "Buy = " + buy.to_s
    puts "i = " + i.to_s
    prices[(i+1)..-1].each_with_index do |sell, j|
      puts "Sell = " + sell.to_s
      puts "j = " + j.to_s
      puts
      if (sell - buy) > profit
        high = j + (i+1)
        low = i
        profit = sell - buy
      end
    end
  end
  
  [low, high]
  
end
  
puts stock_picker([17,3,6,9,15,8,6,1,10])