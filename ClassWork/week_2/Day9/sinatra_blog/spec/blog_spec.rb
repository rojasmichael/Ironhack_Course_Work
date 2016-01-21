require_relative('../lib/blog.rb')
require_relative('../lib/post.rb')


RSpec.describe Blog do
	it "returns a empty array of post" do
	my_blog = Blog.new
	expect(my_blog.posts).to eq([])

	end 

	it "return a blog with post " do 
		my_blog = Blog.new
		post1 = Post.new("1st", Time.new(2016,1, 1), "This is my first post")
		my_blog.add_post(post1)
		expect(my_blog.posts).to eq([post1])
	end 

	it "returns post sorted by date" do
		my_blog = Blog.new
		post1 = Post.new("1st", Time.new(2016,1, 1), "This is my first post")
		post2 = Post.new("2nd", Time.new(2016,2, 1), "This is my second post")
		my_blog.add_post(post1)
		my_blog.add_post(post2)
		expect(my_blog.latest_post).to eq([post2,post1])
	end 
end 

