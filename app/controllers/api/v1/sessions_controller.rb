class Api::V1::SessionsController < ApplicationController

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      render json: {id: @user.id}
    else
      render json: {error: "login failed"}
    end
  end
end
