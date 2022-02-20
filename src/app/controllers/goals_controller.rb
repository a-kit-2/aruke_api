class GoalsController < ApplicationController
  include Secured

  #GET /goals
  def index
    @goals = current_user.goals
    render json: { goals: @goals }
  end

  # GET /goals/:id
  def show
    @goal = Goal.find(params[:id])
    render json: { goals: @goal }
  end

  #POST /goals
  def create
    @date = Date.new(goals_params[:term][0..3].to_i, goals_params[:term][4..5].to_i, goals_params[:term][6..7].to_i)
    @goal = current_user.goals.create(
      steps: goals_params[:steps],
      term: @date,
      penalties: goals_params[:penalties],
      is_achieved: false,
      is_deleted: false
    )
    if @goal.save
      render json: { create: true }
    else
      render json: { create: false }
    end
  end

  # PATCH/PUT /goals/:id
  def update
    @goal = Goal.find(params[:id])
    @goal.steps = goals_params[:step]
    @goal.term = goals_params[:term]
    @goals/penalties = goals_params[:penalties]
    if @goal.save
      render json: { update: true }
    else
      render json: { update: false }
    end
  end

  # DELETE /goals/:id
  def destroy
    @goal = Goal.find(params[:id])
    @goal.is_deleted = true
    if @goal.save
      render json: { destroy: true }
    else
      render json: { destroy: false }
    end
  end

  private

  def goals_params
    params.require(:goal).permit(:steps, :term, :penalties)
  end
end
