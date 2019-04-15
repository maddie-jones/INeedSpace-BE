class Api::V1::ImagesearchController < ApplicationController
  def index
    images = ImagesearchFacade.new(params[:q]).search_images
    binding.pry
    render json: ImagesearchSerializer.new(images)
  end
end
