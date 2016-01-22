require "sinatra"
require "sinatra/reloader" if development?
require "imdb"

require_relative('lib/moviesearch.rb')

get "/imdb_test" do
  search = Imdb::Search.new("pizza")

  @number_of_results = search.movies.length
  @first_result = search.movies[1]

  erb(:imdb_test)
end

get "/search" do


erb(:search)
	end


post "/results" do

@movie = params[:movie].to_s
@search = MovieSearch.new(@movie)
@movie_list = @search.posters_only
@random = @movie_list.sample
# search = Imdb::Search.new(@movie)

# 	@movie_list = search.movies[0..9]


erb(:results)
end

