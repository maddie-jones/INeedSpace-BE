class Api::V1::FavoritesController < ApplicationController
  def create
    if favorite_params
      favorite = Favorite.create(favorite_params)
      render status: :created, json: FavoritesSerializer.new(favorite)
    else
      render json: {status: 'Missing information'}
    end
  end

  private

  def favorite_params
    params.require(:favorite).permit(:title, :hdurl, :url, :explanation)
  end
end
