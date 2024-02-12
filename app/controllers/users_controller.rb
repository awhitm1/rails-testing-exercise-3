class UsersController < ApplicationController
  def index
    users = User.all
    render json: @users
  end

  def show
    user = User.find(params[:id])
    render json: @user
  end

  def add
    user = User.create(name: params[:name], email: params[:email])
    render json: @user
  end

  def delete
    user = User.find(params[:id]).destroy
    render json: @user
  end

  def update
    user = User.find(params[:id]).update(name: params[:name], email: params[:email])
    render json: @user
  end
end
