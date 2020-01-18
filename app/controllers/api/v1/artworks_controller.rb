class Api::V1::ArtworksController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def index 
    @artworks = Artwork.all 
    render json: @artworks
  end 

end