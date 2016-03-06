class MilestonesController < ApplicationController
  before_filter :set_goal, :set_user
  before_action :set_milestone, only: [:show, :edit, :update, :destroy]

  # GET /milestones
  def index
    @milestones = @goal.milestones.all
  end

  # GET /milestones/1
  def show
  end

  # GET /milestones/new
  def new
    @milestone = @goal.milestones.new
  end

  # GET /milestones/1/edit
  def edit
  end

  # POST /milestones
  def create
    @milestone = @goal.milestones.new(milestone_params)

    if @milestone.save
      redirect_to user_goal_path(@user, @goal), notice: 'Milestone was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /milestones/1
  def update
    if @milestone.update(milestone_params)
      redirect_to user_goal_path(@user, @goal), notice: 'Milestone was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /milestones/1
  def destroy
    @milestone.destroy
    redirect_to goal_milestones_url(@goal), notice: 'Milestone was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal
      @goal = Goal.find(params[:goal_id])
    end

    def set_user
      @user = @goal.user
    end

    def set_milestone
      @milestone = @goal.milestones.find(params[:id])
    end

   # Only allow a trusted parameter "white list" through.
    def milestone_params
      params.require(:milestone).permit(:title, :due_date, :description)
    end
end
