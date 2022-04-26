# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

# create new hash
# iterate through substrings of numbers
# create k v pairs of highest difference as keys, indices of day as values
# sort stock hash by highest number key
# return highest number key

def stock_picker(arr)
  stock_picks = Hash.new(0)
  (0...arr.length).each do |i|
    (i...arr.length).each do |j|
      highest_diff = arr[j] - arr[i]
      stock_picks[highest_diff] = [i, j]
    end
  end
  sorted = stock_picks.sort_by { |k, v| k }
  best = sorted.last.last
  puts "Buy on day #{best.first}"
  puts "Sell on day #{best.last}"
  puts "Profit will be $#{sorted.last.first}"
end

stock_picker([17,3,6,9,15,8,6,1,10])
# [1,4]  # for a profit of $15 - $3 == $12