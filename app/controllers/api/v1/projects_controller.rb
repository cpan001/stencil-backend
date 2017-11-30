class Api::V1::ProjectsController < ApplicationController

  def index
    @projects = Project.where(creator_id: params[:user_id])
    render json: @projects
  end

  def create
    @project = Project.create(title: params[:title], description: params[:description], creator_id: params[:user_id])

    #collaborations
    @collabs = params[:collaborators].map {|user| Collaboration.create(project_id: @project.id, collaborator_id: user)}

    if @project.save
      render json: @project
    else
      render json: {errors: @project.errors.full_messages}
    end
  end

  def show

    @project = Project.find(params[:id])
    if @project
      render json: @project
    else
      render json: {errors: @project.errors.full_messages}
    end
  end

  def update

  end
end
