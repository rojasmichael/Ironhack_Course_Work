class ConcertsController < ApplicationController

	def index
		@concerts = Concert.all
		@concerts_this_month = Concert.where(date: DateTime.current.beginning_of_day + 1.day..DateTime.current.end_of_month)
		@concerts_today = Concert.where(date: DateTime.current.beginning_of_day..DateTime.current.end_of_day)
		render 'index'

	end

	def show 

		@concert= Concert.find_by(id: params[:id])
		
	end


	def new
		@concert = Concert.new
	end

	def create
		@concert = Concert.new(concert_params)
		
		if @concert.save
				redirect_to concerts_path(@concert)
		else
			render 'new'
		end 
	end



	private
		def concert_params
			params.require(:concert).permit(:artist, :venue, :city, :date, :price, :description)
		

		end

end
