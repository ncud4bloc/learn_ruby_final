lc_alpha = "abcdefghijklmnopqrstuvwxyz"
phrase = "Looks like it's working!"
new_phrase = []
letter_pre = phrase.split("")
shift = 26

letter_pre.each do |x|
  if x == " " || lc_alpha.index(x.downcase) == nil
    new_phrase.push(x)
  else
    l_num = lc_alpha.index(x.downcase)
    
    if shift + l_num > 26
      final_shift = shift + l_num - 26
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
puts coded
coded