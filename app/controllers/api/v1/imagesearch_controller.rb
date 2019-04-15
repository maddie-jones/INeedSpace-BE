class Api::V1::ImagesearchController < ApplicationController
  def index
    facade = ImagesearchFacade.new(params[:q])
    render json: ImagesearchSerializer.new(facade)
  end
end
