class EntriesController < ApplicationController
  def edit
  	@project = Project.find(params[:project_id])
  	@entry = @project.entries.where(id: params[:id]).first
  end


  def index
  	@project = Project.find_by(id: params[:id])
  	unless @project
  		render "no_project"
  	end 
  end

  def new
  	@project = Project.find(params[:project_id])
  	@entry = @project.entries.new(entry_params)

  end

  
  def create
  	@project = Project.find params[:project_id]
  	@entry = @project.entries.new params[:entry]

  	if @entry.save
  			redirect_to action: 'index', controller:
  			'entries', project_id: @project_id

  	else
  			render 'new'

  	end
  end

  def update
  	@project = Project.find params[:project_id]
  	@entry = @project.entries.new params[:entry]

  	if @entry.update_attributes(entry_params)
  			redirect_to project_entries_path(@project)

  	else
  			render 'edit'

  	end
  end

  private

  	def entry_params
  			params.require(:entry).permit(:hours, :mintues, :date)
  	end

end
