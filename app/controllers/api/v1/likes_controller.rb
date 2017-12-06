class Api::V1::LikesController < ApplicationController

  def create
    @like = Like.new(liker_id: params[:user_id], design_id: params[:design_id])
    # byebug
    if @like.save
      render json: @like
    else
      render json: {errors: @like.errors.full_messages}
    end
  end

  def destroy
    @like = Like.find_by(liker_id: params[:user_id], design_id: params[:design_id])
    if  Like.destroy(@like.id)
      render json: {success: "Deleted like"}
    else
      render json: {error: "Cannot delete like"}
    end
  end


end
