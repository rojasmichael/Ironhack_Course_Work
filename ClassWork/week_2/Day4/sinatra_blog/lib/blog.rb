class Blog
	attr_accessor :posts
def initialize
		@posts = []
	end

	def add_post(post)
		@posts.push(post)
	end

	def latest_post
		
		@posts.sort { |a, b| b.date <=> a.date }
		
	end 
end