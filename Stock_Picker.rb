puts "Enter daily stock prices:"
input = gets.chomp
my_str = input.split(",")
my_array = my_str.map(&:to_i)
puts my_array

#my_array = [15,3,67,99,18]
my_length = (my_array.length) -2
gap = 0
buy_sell_array = []
date_array = []

for min in 0..my_length
  my_minval = my_array[min]
  for max in (min + 1)..(my_length + 1)
    my_maxval = my_array[max]
    i_gap = my_maxval - my_minval
      if i_gap > gap
        gap = i_gap
        buy_sell_array[0] = my_minval
        buy_sell_array[1] = my_maxval
        date_array[0] = my_array.index(my_minval)
        date_array[1] = my_array.index(my_maxval)
      else 
        next
      end
  end
end
puts "New array: #{buy_sell_array}"
puts "Buy dates: #{date_array}"
date_array