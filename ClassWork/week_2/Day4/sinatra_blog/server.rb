require_relative('lib/blog.rb')
require_relative('lib/post.rb')

require 'sinatra'
require 'sinatra/reloader'

enable(:sessions)

blog = Blog.new
post1 = Post.new("My first blog post", Time.new(2016,1, 1), "This is my first post")
post2 = Post.new("My second blog post", Time.new(2016,2, 1), "This is my second post")
blog.add_post(post1)
blog.add_post(post2)

get "/" do 
@posts = blog.latest_post
erb :post
end

# get "/post_details/:post_id"

# erb :post_details
# end 