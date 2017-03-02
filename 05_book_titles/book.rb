class Book
  attr_reader :title

  def title(new_title)
    words = new_title.split(" ")
    words = [words[0].capitalize] +
      words[1..-1].map do |word|
        little_words = %w{a an and the in of} # same as ['a', 'an', 'and', 'the',........]
        if little_words.include? word
          word
        else
          word.capitalize
        end
      end
    @title = words.join(" ")
  end

end

# My addition
book = Book.new
output = book.title('pigs in a blanket')
puts output
