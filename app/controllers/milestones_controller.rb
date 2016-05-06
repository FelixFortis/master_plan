class MilestonesController < ApplicationController
  before_filter :set_project, :set_user
  before_action :set_milestone, only: [:show, :edit, :update, :destroy]

  # GET /milestones
  def index
    @milestones = @project.milestones.all
  end

  # GET /milestones/1
  def show
  end

  # GET /milestones/new
  def new
    @milestone = @project.milestones.new
  end

  # GET /milestones/1/edit
  def edit
  end

  # POST /milestones
  def create
    @milestone = @project.milestones.new(milestone_params)

    if @milestone.save
      redirect_to project_milestone_path(@project, @milestone), notice: 'Milestone was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /milestones/1
  def update
    if @milestone.update(milestone_params)
      redirect_to project_milestone_path(@project, @milestone), notice: 'Milestone was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /milestones/1
  def destroy
    @milestone.destroy
    redirect_to project_milestones_url(@project), notice: 'Milestone was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:project_id])
    end

    def set_user
      @user = @project.user
    end

    def set_milestone
      @milestone = @project.milestones.find(params[:id])
    end

   # Only allow a trusted parameter "white list" through.
    def milestone_params
      params.require(:milestone).permit(:title, :due_date, :description)
    end
end
