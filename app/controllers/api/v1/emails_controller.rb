class Api::V1::EmailsController < ApplicationController
  skip_before_action :authorized, only: [:create, :index]

  def create
    byebug
    # @user = User.find(id: params[:userID])
    # @artwork = Artwork.find(id: params[:artworkID])
    # if @user.valid?
    #   EmailsMailer.with(user: @user, artwork: @artwork).welcome_email.deliver_now
    # end
  end 

  def index 
    @emails = Email.all
    render json: @emails 
  end

end
