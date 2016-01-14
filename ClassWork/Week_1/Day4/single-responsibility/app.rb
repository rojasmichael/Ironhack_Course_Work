require_relative ('lib/Aurth.rb')
require_relative('lib/WordCount.rb')


auth = Aurth.new("nizar", "swordfish")
puts "Username:"
username = gets.chomp

puts "Password:"
password = gets.chomp

puts "\n----\n"

if auth.valid_credentials?(username, password)
	puts "Welcome back, #{username}!"

	puts "Please enter some text to count words:"
	text = gets.chomp

	counter = WordCount.new(text)
	

	puts "\n---\n"

	puts "The entered text has _#{counter.word_count}_ words."

else
	puts "WRONG! Get out of here!"
end

