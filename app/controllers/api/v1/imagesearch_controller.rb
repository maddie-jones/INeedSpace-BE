class Api::V1::ImagesearchController < ApplicationController
  def index
    images = ImagesearchFacade.new(params[:q]).search_images
    render json: {data: images}
  end
end
