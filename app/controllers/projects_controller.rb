class ProjectsController < ApplicationController
	before_action :set_project, only: [:show, :edit, :update, :destroy]
  def index
  	if params[:tag].present?
  		@projects = Project.tagged_with(params[:tag])
  	else
  		@projects = Project.all
  	end
  end

  def show
  end

  def new
  	@project = Project.new
  end

  def edit
  end

  def update
    if @project.update_attributes(project_params)
      flash[:success] = "Project updated"
      redirect_to @project
    else
      render 'edit'
    end
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
  	params.require(:project).permit(:name, :description, :tag_list, tasks_attributes: [:id, :description, :name, :_destroy])
  end

  def set_project
  	@project = Project.find(params[:id])
  end

end
