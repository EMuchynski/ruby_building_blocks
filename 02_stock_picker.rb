=begin
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

    > stock_picker([17,3,6,9,15,8,6,1,10])
    => [1,4]  # for a profit of $15 - $3 == $12
=end

def stock_picker(arr)
  #declare buy, sell, and profit variables
  buy, sell, profit = 0, 0, arr[1] - arr[0]

  #loop through array
  (0..arr.length-2).each do |i|
    (i+1..arr.length-1).each do |j|
      #check if profit is greater
      if arr[j] - arr[i] > profit
        buy = i
        sell = j
        profit = arr[j] - arr[i]
      end
    end
  end

  #return the day to buy and the day to sell
  puts "Day to buy: " + buy.to_s + ". Day to sell: " + sell.to_s + "."
  return [buy, sell]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
