class Api::V1::UsersController < ApplicationController

  def create
    @user = User.new(name: params[:name], email: params[:email], password: params[:password], avatar: params[:avatar])

    if @user.save
      render json: {id: @user.id}
    else
      render json: {erros: @user.errors.full_messages}
    end
  end

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    if @user
      render json: @user
    else
      render json: {errors: @user.errors.full_messages}
    end
  end



end
