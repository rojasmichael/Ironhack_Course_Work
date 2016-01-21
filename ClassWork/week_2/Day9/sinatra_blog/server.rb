require_relative('lib/blog.rb')
require_relative('lib/post.rb')

require 'sinatra'
blog = Blog.new
post1 = Post.new("1st", Time.new(2016,1, 1), "This is my first post")
post2 = Post.new("2nd", Time.new(2016,2, 1), "This is my second post")
blog.add_post(post1)
blog.add_post(post2)

get "/" do 
@posts = blog.latest_post
erb :post
end

