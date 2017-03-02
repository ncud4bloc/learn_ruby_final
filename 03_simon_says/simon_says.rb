def echo(input)
	input
end

def shout(x)
	x.upcase
end

def repeat(h, num = 2)
	([h] * num).join(" ")
end

def start_of_word(h, n)
	h[0...n]
end

def first_word(h)
	h.split(" ").first
end

def titleize(h)
	words = h.split.map do |word|
		if %w(the and over).include?(word)
			word
		else
			word.capitalize
		end
	end
	words.first.capitalize!
	words.join(" ")
end