class Api::V1::FavoritesController < ApplicationController

  def index
    @favorites = FavoriteWine.all
    render json: @favorites, status: :accepted
  end

  def create
    @favorite = FavoriteWine.new(favorite_params)
    if @favorite.save
      render json: @favorite, status: :accepted
    else
      render json: { errors: @favorite.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @favorite.destroy
    render body: nil, status: :no_content
  end

  private

  def favorite_params
    params.permit(:wine_id, :user_id)
  end
end
