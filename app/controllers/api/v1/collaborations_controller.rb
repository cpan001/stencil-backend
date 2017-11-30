class Api::V1::CollaborationsController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    @collaborations = params[:collaborators].each {|c|
        if !Collaboration.find_by(project_id: @project.id, collaborator_id: c)
          Collaboration.create(project_id: @project.id, collaborator_id: c)
        end
    }

    if @collaborations
      render json: {success: "action worked"}
    else
      render json: {errors: "did not add collaborators"}
    end
  end

  def destroy
    @collaboration = Collaboration.find_by(project_id: params[:project_id],collaborator_id: params[:id])

    if Collaboration.destroy(@collaboration.id)
      render json: {success: "destroyed"}
    else
      render json: {errors: "did not destroy"}
    end
  end
end
