class Api::V1::DesignsController < ApplicationController

  def index
    @designs = Design.all
    render json: @designs
  end

  def create
    @design = Design.create(title: params[:title], description: params[:description], url: params[:url], code: params[:code], creator_id: params[:user_id])


    # tags
    @tags = params[:tags].map {|tag| Tag.find_or_create_by(text: tag)}
    @designtags = @tags.map {|tag| DesignTag.create(design_id: @design.id, tag_id: tag.id)}
    # images
    @images = params[:images].map {|i| Image.create(filename: i, design_id: @design.id)}
    byebug

    if @design.save
      render json: @design
    else
      render json: {errors: @design.errors.full_messages}
    end
  end

  def update

  end

end
