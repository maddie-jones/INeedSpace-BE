class Api::V1::FavoritesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    favorites = Favorite.all
    render status: :ok, json: FavoritesSerializer.new(favorites)
  end
  def create
    if favorite_params
      favorite = Favorite.create(favorite_params)
      render status: :created, json: FavoriteSerializer.new(favorite)
    else
      render json: {status: 'Something went wrong'}
    end
  end

  private

  def favorite_params
    params.permit(:title, :hdurl, :url, :explanation)
  end
end
