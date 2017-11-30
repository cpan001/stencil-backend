class Api::V1::ProjectDesignsController < ApplicationController

  def create
    @project = Project.find_or_create_by(title: params[:project], creator_id: params[:creatorId])
    @design = Design.find(params[:designId])

    #likes
    @like = Like.find_by(design_id: @design.id, liker_id: params[:creatorId])
    if !@like
      Like.create(design_id: @design.id, liker_id: params[:creatorId])
    end

    if @project
      @project_design = ProjectDesign.new(design_id: params[:designId], project_id: @project.id)
      if @project_design.save
        render json: @project_design
      else
        render json: {errors: @project_design.errors.full_messages}
      end
    end
  end


end
