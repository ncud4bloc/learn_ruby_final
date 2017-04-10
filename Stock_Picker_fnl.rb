puts "Enter daily stock prices:"
input = gets.chomp
stocks = input.split(",").map(&:to_i)

my_length = (stocks.length) -2
profit = 0
dates = []

for i in 0..my_length
  my_minval = stocks[i]
  for j in (i + 1)..(my_length + 1)
    my_maxval = stocks[j]
    i_profit = my_maxval - my_minval
      if i_profit > profit
        profit = i_profit
        dates[0] = stocks.index(my_minval)
        dates[1] = stocks.index(my_maxval)
      else 
        next
      end
  end
end
puts "Best Buy & Sell Days: #{dates}"
dates