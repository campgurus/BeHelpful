class ProjectsController < ApplicationController
  def index
  	if params[:tag].present?
  		@projects = Project.tagged_with(params[:tag])
  	else
  		@projects = Project.all
  	end
  end

  def show
  	@project = Project.find(params[:id])
  end

  def new
  	@project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project
    else
      render 'new'
    end
  end

  def tagged
  	if params[:tag].present
  		@projects = Project.tagged_with(params[:tag])
  	else
  		@projects = Project.all
  	end
  end

private

  def project_params
  	params.require(:project).permit(:name, :description, :tag_list)
  end

end
