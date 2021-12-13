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
    @user = User.new(name: users_params[:name], email: users_params[:email], is_deleted: false)
    if @user.save
      render json: { create: true }
    else
      render json: { create: false }
    end
  end

  # PATCH/PUT /users/:id
  def update
    @user = User.find(params[:id])
    @user.name = users_params[:name]
    @user.email = users_params[:email]
    if @user.save
      render json: { update: true }
    else
      render json: { update: false }
    end
  end

  # DELETE /users/:id
  def destroy
    @user = User.find(params[:id])

    # 論理削除
    @user.is_deleted = true
    if @user.save
      render json: { logical_delete: true }
    else
      render json: { logical_delete: false }
    end

    # 完全に削除
    # if @user.destroy
    #   render json: { destroy: true }
    # else
    #   render json: { destroy: false }
    # end
  end

  private

  def users_params
    params.require(:user).permit(:name, :email)
  end
end
