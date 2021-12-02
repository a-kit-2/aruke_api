class UsersController < ApplicationController
  def index
    @users = User.all
    render json: { users: @users }
  end

  def create
    @user = User.new
    @user.save
  end
end
