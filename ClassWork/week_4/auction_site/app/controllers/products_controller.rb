class ProductsController < ApplicationController

	def index
		@user = User.find_by(id: params[:user_id])
		@products = @user.products.all
	end

	def new
		@user = User.find_by(:id parmas[:user_id])
		@product = @user.product.new
		render :new

	end

	def create
		@user = User.find_by(:id params[:user_id])
	
		@user.products.new(product_params)

		if @product.save
				redirect_to user_products_path(@user)
		else
			render 'new'

	end


	def destory
		@product.find(params[:id]).destory
		redirect_to products_path

	end


	private
		def product_params
			params.require(:product).permit(:title, :description, :deadline)
		

		end

end
