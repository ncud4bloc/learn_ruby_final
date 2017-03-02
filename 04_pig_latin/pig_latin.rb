=begin
def translate(word)
	fl = word[0].downcase
	f2l = word[1].downcase
	tail = 'ay'
	vowel = ['a', 'e', 'i', 'o', 'u']

	if vowel.include?fl
		word + tail
	else
		if vowel.include?f2l
			word[1..-1] + word[0] + tail
		else
			word[2..-1] + word[0..1] + tail
		end
	end
end
=end

=begin
my_sentence = "Once upon some time in the wild west"
#my_sentence = "Once"
my_wordbyword = my_sentence.split

my_wordbyword.each do |input|
	translate(input)
end

	def translate(word)
		fl = word[0].downcase
		f2l = word[1].downcase
		tail = 'ay'
		vowel = ['a', 'e', 'i', 'o', 'u']

		if vowel.include?fl
			word + tail
		else
			if vowel.include?f2l
				word[1..-1] + word[0] + tail
			else
				word[2..-1] + word[0..1] + tail
			end
		end
	end
=end

my_sentence = "Once upon some time in the wild west"
my_wordbyword = my_sentence.split
pe_sentence = []

my_wordbyword.each do |word|

#	def translate(word)
		fl = word[0].downcase
		f2l = word[1].downcase
		tail = 'ay'
		vowel = ['a', 'e', 'i', 'o', 'u']

		if vowel.include?fl
			puts word + tail
			output = word + tail
		else
			if vowel.include?f2l
				puts word[1..-1] + word[0] + tail
				output = word[1..-1] + word[0] + tail
			else
				puts word[2..-1] + word[0..1] + tail
				output = word[2..-1] + word[0..1] + tail
			end
		end
#	end
	pe_sentence.push(output)
#	puts pe_sentence.join(" ")
end

puts pe_sentence.join(" ")

#translate(my_sentence)
