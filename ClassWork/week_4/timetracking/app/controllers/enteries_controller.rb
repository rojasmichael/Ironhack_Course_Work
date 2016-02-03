class EnteriesController < ApplicationController
  def index
  	@project = Project.find_by(id: params[:id])
  	unless @project
  		render "no_project"
  	end 
  end
end
