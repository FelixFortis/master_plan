class ProjectsController < ApplicationController
  before_filter :set_user
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  def index
    @projects = @user.projects.all
  end

  # GET /projects/1
  def show
  end

  # GET /projects/new
  def new
    @project = @user.projects.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  def create
    @project = @user.projects.new(project_params)

    if @project.save
      redirect_to user_project_path(@user, @project), notice: 'Project was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /projects/1
  def update
    if @project.update(project_params)
      redirect_to user_project_path(@user, @project), notice: 'Project was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy
    redirect_to user_projects_url(@user), notice: 'Project was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = current_user
    end

    def set_project
      @project = @user.projects.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def project_params
      params.require(:project).permit(:title, :type, :due_date, :description)
    end
end
