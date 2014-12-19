class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  
  def index
    @projects = Project.order(due_date: :asc) 
  end

  def show
    #@project = Project.find(params[:id])
  end

  def reviews
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project
    else
      render :new
    end
  end

  def update
    if @project.update(project_params)
      redirect_to @project
    else
      render :edit
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def destroy
    @project = Project.find(params[:id])
    if @project.destroy
       redirect_to projects_path
    else
       render :new
    end
  end

  def upload_pictures
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :goal, :due_date)
  end
end
