class Api::V1::CommentsController < ApplicationController

  def index
    @design = Design.find(params[:design_id])
    if @design
      @comments = @design.comments
      render json: @comments
    else
      render json: {errors: "Design Not Found"}
    end
  end

  def create
    # byebug
    @user = User.find(params[:user_id])
    @comment = Comment.new(content: params[:content], user_id: params[:user_id], design_id: params[:design_id])
    if @comment.save
      render json: @comment
    else
      render json: {errors: @comment.errors.full_messages}
    end
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment
      @comment.votes += 1
      @comment.save
      render json: @comment
    else
      render json: {errors: @comment.errors.full_messages}
    end
  end





end
