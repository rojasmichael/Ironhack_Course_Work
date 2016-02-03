require "sinatra"
require "sinatra/reloader" if development?

require_relative "lib/post.rb"
require_relative "lib/blog.rb"


get "/" do 

# post1 = Post.new("Test Blog", "Subtest",Date.new(2016,1,2), "Michael Rojas")
# new_blog = Blog.new
# @blog_post = new_blog.add_post(post1)


erb :blog
	
end

