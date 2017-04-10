dictionary = ["below","down","go","going","horn","how"]
phrase = "howdy going down"
 
def substrings(ph, di)
  word_hash = {}
  words = ph.split(" ")
  di_length = di.length
    
  words.each do |w|
    count = 0
    for j in 0..(di_length - 1)
      search = di[j]
      if w.include?(search)
        count += 1
        word_hash[search] = count
      else
        next
      end
    end
  end
puts "Here\'s the hash: #{word_hash}"
word_hash
end  
    
substrings(phrase, dictionary)
