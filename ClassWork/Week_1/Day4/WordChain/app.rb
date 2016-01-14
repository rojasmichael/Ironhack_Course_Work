require_relative ("lib/search.rb")


puts "Enter first word"
first_word=gets.chomp
puts "Enter second word"
second_word=gets.chomp
variable = Search.new(first_word,second_word) 

if variable.check_words 

variable.search_words

else 
	puts "Words must be same length && Exist"
end

