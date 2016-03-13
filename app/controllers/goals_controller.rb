class GoalsController < ApplicationController
  before_filter :set_user
  before_action :set_goal, only: [:show, :edit, :update, :destroy]

  # GET /goals
  def index
    @goals = @user.goals.all
  end

  # GET /goals/1
  def show
  end

  # GET /goals/new
  def new
    @goal = @user.goals.new
  end

  # GET /goals/1/edit
  def edit
  end

  # POST /goals
  def create
    @goal = @user.goals.new(goal_params)

    if @goal.save
      redirect_to user_goal_path(@user, @goal), notice: 'Goal was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /goals/1
  def update
    if @goal.update(goal_params)
      redirect_to user_goal_path(@user, @goal), notice: 'Goal was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /goals/1
  def destroy
    @goal.destroy
    redirect_to user_goals_url(@user), notice: 'Goal was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = current_user
    end

    def set_goal
      @goal = @user.goals.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def goal_params
      params.require(:goal).permit(:title, :type, :due_date, :description)
    end
end
