class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    @user = User.new(name: params[:name], email: params[:email], password: params[:password], avatar: params[:avatar])

    if @user.save
      token = encode_token({user_id: @user.id})
      render json: {id: @user.id, user: @user, jwt: token}, status: 202
    else
      render json: {erros: @user.errors.full_messages}, status: 401
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

  def select
    @users = User.all
    if params[:input]
      @search_term = params[:input].downcase
      @users = @users.select {|user| user.name.downcase.match(@search_term)}
      if @users
        render json: @users, each_serializer: UserSelectSerializer, root: false
      else
        render json: {errors: "no user match"}
      end
    else
    end

  end


end
