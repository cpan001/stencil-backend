class Api::V1::DesignsController < ApplicationController

  def index
    @designs = Design.all
    render json: @designs
  end

  def create

  end

  def update

  end

end
