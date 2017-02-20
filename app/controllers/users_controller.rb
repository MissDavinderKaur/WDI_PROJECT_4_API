class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
      @user = User.find(params[:id])
      p '****HERE****', @user
      render json: @user
    end
end
