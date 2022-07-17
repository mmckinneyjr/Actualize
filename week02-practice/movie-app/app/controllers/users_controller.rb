class UsersController < ApplicationController
  def index
    user = User.all
    render json: user.to_json
  end

  def show
    user = User.find_by(id: params["id"])
    render json: user.as_json
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      admin: params[:admin],
    )
    if user.save
      render json: { message: "#{params[:name]}'s account successfully created" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def update
    user = User.find_by(id: params["id"])
    user.name = params["name"] || user.name
    user.email = params["email"] || user.email
    user.password = params["password"] || user.password
    user.admin = params["admin"] || user.admin

    if user.save
      render json: user.as_json
    else
      render json: { errors: user.errors.full_messages }
    end
  end

  def destroy
    user = User.find_by(id: params["id"])
    user.destroy
    render json: { message: "Successfully Deleted" }
  end
end
