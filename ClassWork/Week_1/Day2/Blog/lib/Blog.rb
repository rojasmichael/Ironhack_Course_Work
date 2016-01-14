class Blog

	def initialize
		@post = []
		@current_page = 1

	end

	

	def add_post(post)

		@post.push(post)
	end 


	def next_page
		if !last_page?
		end

		@current_page += 1
		publish_front_page
	
	end
	def previous_page
		if @current_page = 1
		end 

		@current_page -= 1
		publish_front_page

	end


	def publish_front_page

		first_post = (@current_page - 1) * 3#Some value calculated from the current page
		last_post = (first_post + 3) - 1#Some value calculated from the current page
		first_three_post = @post[first_post..last_post]

		first_three_post.each do | post | post.display

				end 


	
	end

	def last_page?
		last_page = (@posts.length / 3.0).ceil
		@current_page == last_page
	end 
end





