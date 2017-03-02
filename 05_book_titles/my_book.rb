class Book
	def title(input_title)
		tcap = input_title.capitalize
		puts tcap
	end
end

line1 = ["inferno"]
book = Book.new
book.title('inferno')