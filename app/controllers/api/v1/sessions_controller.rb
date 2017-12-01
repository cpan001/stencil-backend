class Api::V1::SessionsController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: @user.id})
      render json: {id: @user.id, user: @user, jwt: token}, status: 202
    else
      render json: {error: "Invalid username or password"}, status: 401
    end
  end
end
