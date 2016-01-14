require_relative("lib/Blog.rb")
require_relative("lib/Post.rb")
require_relative("lib/sponseredpost.rb")



require 'colorize'

blog = Blog.new
blog.add_post Post.new("Jan 2016", "First Post", "This is the text 1")
blog.add_post Post.new("Feb 2016", "Second Post", "This is the text 2")
blog.add_post Post.new("Mar 2016", "Third Post", "This is the text 3")
blog.add_post SponseredPost.new("April 2016", "Fourth Post", "This is text 4")
blog.add_post Post.new("Jan 2017", "5 Post", "This is the text 5")
blog.add_post Post.new("Feb 2018", "6 Post", "This is the text 6")
blog.add_post Post.new("Mar 2019", "7 Post", "This is the text 7")

blog.publish_front_page


puts "nxt for Next prev for Previous"

user_input = gets.chomp
while user_input !="exit!"

	if user_input == "nxt"
	blog.next_page
	elsif user_input == "prev"
	blog.previous_page
	elsif user_input != "exit"
	puts "Command not found"
	end
user_input = gets.chomp
end 

	

