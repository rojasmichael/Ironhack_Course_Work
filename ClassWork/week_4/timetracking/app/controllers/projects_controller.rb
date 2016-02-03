class ProjectsController < ApplicationController

	def index
		@projects = Project.last_created_projects(10)
		if @projects.empty?

			render "no_project" 
		else 
			render "index"
		end

	end

	def show
		@project= Project.find(id: params[:id])

	end


end
