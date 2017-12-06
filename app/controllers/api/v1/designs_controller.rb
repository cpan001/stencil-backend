class Api::V1::DesignsController < ApplicationController

  def save
    if params[:jwt]
      user_id = JWT.decode(params[:jwt], "flatiron", true, {algorithm: "HS256"})[0]["user_id"]
      @design = Design.create(title: params[:title], url: params[:url], creator_id: user_id, code: params[:url])
      @like = Like.create(design_id: @design.id, liker_id: user_id)
      @image = Image.create(filename: params[:image][:filename], design_id: @design.id)
      if @design.save && @image.save
        render json: {success: "design added"}
      else
        render json: {error: "Could not save"}
      end
    end
  end

  def index
    @designs = Design.all
    render json: @designs
  end

  def create
    @design = Design.create(title: params[:title], description: params[:description], url: params[:url], code: params[:code], creator_id: params[:user_id])
    @like = Like.create(design_id: @design.id, liker_id: params[:user_id])

    # tags
    @tags = params[:tags].map {|tag| Tag.find_or_create_by(text: tag)}
    @designtags = @tags.map {|tag| DesignTag.create(design_id: @design.id, tag_id: tag.id)}
    # images
    @images = params[:images].map {|i| Image.create(filename: i, design_id: @design.id)}
    # project
    @project = Project.find_or_create_by(title: params[:project], creator_id: params[:user_id])
    @project_design = ProjectDesign.create(project_id: @project.id, design_id: @design.id)


    if @design.save
      render json: @design
    else
      render json: {errors: @design.errors.full_messages}
    end
  end

  def show
    @design = Design.find(params[:id])
    if @design
      render json: @design, serializer: OneDesignSerializer, root: false
    else
      render json: {errors: @design.errors.full_messages}
    end
  end
  def update

  end

end
