class Api::V1::ArtworksController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]

  def index 
    @artworks = Artwork.all 
    render json: @artworks
  end 

  def show 
    @artwork = Artwork.find(params[:id])
    render json: @artwork
  end

end