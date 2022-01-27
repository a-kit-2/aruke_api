class GoalsController < ApplicationController
    # GET /goals
    def index
        @goals = Goal.all
        render json: { goals: @goals }
    end

    # GET /goals/:id
    def show
        @goal = Goal.find(params[:id])
        render json: { goals: @goal }
    end

    def new
        @goal = Goal.new
    end

    def create
        @goal = Goal.create(steps: goals_params[:step], term: goals_params[:term], penalties: goals_params[:penalties],is_achieved: false,is_deleted: false)
        if @goal.save
            render json: { create: true }
          else
            render json: { create: false }
          end
    end

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
        params.require(:goal).permit(:step, :term, :penalties)
    end

end
