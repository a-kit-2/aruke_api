class UsersController < ApplicationController
  # GET /users
  def index
    @users = User.all
    render json: { users: @users }
  end

  # GET /users/:id
  def show
    @user = User.find(params[:id])
    render json: { user: @user }
  end

  # POST /users
  def create
    @user = User.new(users_params)
    @user.save
  end

  # PATCH/PUT /users/:id
  def update
    
  end

  # DELETE /users/:id
  def destroy
    
  end

  private

  def users_params
    params.require(:user).permit(:name, :email)
  end
end
