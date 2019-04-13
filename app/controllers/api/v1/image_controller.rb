class Api::V1::ImageController < ApplicationController
  def show
    facade = ImageFacade.new.day_image
    render json: ImageSerializer.new(facade)
  end
end
