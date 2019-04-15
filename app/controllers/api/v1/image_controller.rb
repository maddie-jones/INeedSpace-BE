class Api::V1::ImageController < ApplicationController
  def show
    facade = ImageFacade.new.day_image(Rails.application.credentials.nasa_api_key)
    render json: ImageSerializer.new(facade)
  end
end
