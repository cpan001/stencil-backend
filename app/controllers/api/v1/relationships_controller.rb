class Api::V1::RelationshipsController < ApplicationController

  def create
    @followed = User.find(params[:user_id])
    @follower = User.find(params[:currentUserId])
    @relationship = Relationship.new(follower_id: @follower.id, followed_id: @followed.id)
    if @relationship.save
      render json: @relationship
    else
      render json: {errors: @relationship.errors.full_messages}
    end

  end

  def destroy
    @followed = User.find(params[:user_id])
    @follower = User.find(params[:id])
    @relationship = Relationship.find_by(follower_id: @follower.id, followed_id: @followed.id)
    if Relationship.destroy(@relationship.id)
      render json: {message: "Success"}
    else
      render json: {errors: "Cannot delete relationship"}
    end
  end
end
