class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end

  def show
    @user = User.find_by(id: params["id"])
    render :show
  end

  def create
    @user = User.new(
      username: params["username"],
      user_email: params["user_email"],
    )
    @user.save
    render template: "users/show"
  end

  def update
    @user = User.find_by(id: params["id"])

    @user.username = params["username"] || user.username
    @user.user_email = params["user_email"] || user.user_email

    @user.save
    render template: "users/show"
  end

  def destroy
    user = User.find_by(id: params["id"])

    user.destroy
    render json: { message: "User Successfully Deleted" }
  end
end
