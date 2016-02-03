class TweetsController < ApplicationController

	def index
		@tweets = Tweet.all
		render 'index'
	end
end
