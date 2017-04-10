def code_it(phrase, shift)
  lc_alpha = "abcdefghijklmnopqrstuvwxyz"
  new_phrase = []
  letter_pre = phrase.split("")

  letter_pre.each do |x|
    if x == " " || lc_alpha.index(x.downcase) == nil
      new_phrase.push(x)
    else
      l_num = lc_alpha.index(x.downcase)
    
      if shift + l_num >= 26
        final_shift = shift + l_num - 26
      elsif shift + l_num <= -26
        final_shift = shift + l_num + 26
      else 
        final_shift = shift + l_num
      end
      if x == x.upcase
        letter_post = lc_alpha[final_shift].upcase
      else
        letter_post = lc_alpha[final_shift]
      end
      new_phrase.push(letter_post)
    end
  end
  coded = new_phrase.join
  puts " "
  puts "Encoded phrase is: #{coded}"
  puts " "
  coded
end

def bad_shift_value
  puts " "
  puts "You can only shift by +/-26 or less, and"
  puts "26 isn't one of your best ideas either!!"
  puts " "
end

def caesar_cipher
  puts "Enter phrase to encode:"
  phrase_in = gets.chomp
  puts "Enter shift value:"
  shift_in = gets.chomp
  shift_in = shift_in.to_i
    if shift_in > 26 || shift_in < -26
      bad_shift_value
    else 
      code_it(phrase_in, shift_in)
    end
  end
caesar_cipher
