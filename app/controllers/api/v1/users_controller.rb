class Api::V1::UsersController < ApplicationController

  def create
    @user = User.new(name: params[:name], email: params[:email], password: params[:password], avatar: params[:avatar])

    if @user.save
      render json: @user
    else
      render json: {erros: @user.errors.full_messages}
    end
  end





end
