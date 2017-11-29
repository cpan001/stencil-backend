class Api::V1::ProjectsController < ApplicationController

  def index
    @projects = Project.where(creator_id: params[:user_id])
    render json: @projects
  end

  def create
    
  end

  def update

  end
end
