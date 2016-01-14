class Post

	def initialize (date, title,text)
		@date = date
		@title = title
		@text = text
	end
	def display


		puts "Post title #{@title}".red

		puts"*********************"

		puts "Post text #{@text}".green

		puts"---------------------"
	
	end

end
