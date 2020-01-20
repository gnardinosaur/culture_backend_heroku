class Api::V1::FavoritesController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def index 
    @favorites = Favorite.all
    render json: @favorites
  end 

  def create 
    @artwork = Artwork.find_or_create_by(met_id: params[:artwork][:ID], img_url: params[:artwork][:img], title: params[:artwork][:title], culture: params[:artwork][:culture], artist: params[:artwork][:artist], date: params[:artwork][:date], description: params[:artwork][:description].join(","), department: params[:artwork][:department])
    @favorite = Favorite.create(user_id: params[:user_id], artwork_id: @artwork.id)
    render json: @favorite 
  end 

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    render json: @favorite 
  end

end