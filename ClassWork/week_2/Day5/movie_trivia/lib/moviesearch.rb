class MovieSearch

attr_reader :search_term

		def initialize(search_term)
			@search_term = search_term

		end


		def posters_only
			search = Imdb::Search.new(@search_term)
			@movie_list = search.movies[0..9]
			poster_movies = @movie_list.select { |movie| movie.poster != nil}
			

		end







end
