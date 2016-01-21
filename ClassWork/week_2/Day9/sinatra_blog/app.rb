require_relative('lib/post.rb')


post1 = Post.new("My first post", Time.new(2016,1, 1), "This is my first post on my cool blog.")
post2 = Post.new("My 2 post", Time.new(2016,1, 1), "This is my first post on my cool blog.")
post3 = Post.new("My 3 post", Time.new(2016,1, 1), "This is my first post on my cool blog.")
post4 = Post.new("My 4 post", Time.new(2016,1, 1), "This is my first post on my cool blog.")
post5 = Post.new("My 5", Time.new(2016,1, 1), "This is my first post on my cool blog.")
post6 = Post.new("My 6 post", Time.new(2016,1, 1), "This is my first post on my cool blog.")
post7 = Post.new("My 7 post", Time.new(2016,1, 1), "This is my first post on my cool blog.")
post8 = Post.new("My 9 post", Time.new(2016,1, 1), "This is my first post on my cool blog.")

my_blog = Blog.new
my_blog.add_post(post)
