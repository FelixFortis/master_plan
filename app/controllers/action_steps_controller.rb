class ActionStepsController < ApplicationController
  before_filter :set_project, :set_user
  before_action :set_action_step, only: [:show, :edit, :update, :destroy]

  # GET /action_steps
  def index
    @action_steps = @project.action_steps.all
  end

  # GET /action_steps/1
  def show
  end

  # GET /action_steps/new
  def new
    @action_step = @project.action_steps.new
  end

  # GET /action_steps/1/edit
  def edit
  end

  # POST /action_steps
  def create
    @action_step = @project.action_steps.new(action_step_params)

    if @action_step.save
      redirect_to project_action_step_path(@project, @action_step), notice: 'ActionStep was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /action_steps/1
  def update
    if @action_step.update(action_step_params)
      redirect_to project_action_step_path(@project, @action_step), notice: 'ActionStep was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /action_steps/1
  def destroy
    @action_step.destroy
    redirect_to project_action_steps_url(@project), notice: 'ActionStep was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:project_id])
    end

    def set_user
      @user = @project.user
    end

    def set_action_step
      @action_step = @project.action_steps.find(params[:id])
    end

   # Only allow a trusted parameter "white list" through.
    def action_step_params
      params.require(:action_step).permit(:title, :due_date, :description)
    end
end
