class Api::V1::EmailsController < ApplicationController
  skip_before_action :authorized, only: [:create, :index]

  def create
    @user = User.find(params[:userID])
    @artwork = Artwork.find(params[:artworkID])
    @search_params = params[:searchParams]
    @schedule_params = params[:scheduleParams]
    if @user.valid?
      EmailsMailer.with(user: @user, artwork: @artwork, search_info: @search_params, schedule_info: @schedule_params).welcome_email.deliver_now
    end
  end 

  def index 
    @emails = Email.all
    render json: @emails 
  end

end
