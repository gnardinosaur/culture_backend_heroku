class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :index, :user_favorites]
  
  def create 
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else 
      render json: { error: 'user exists' }, status: :not_acceptable
    end 
  end

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end
  
  def index
    @users = User.all
    render json: @users 
  end

  def favorite_works
    @user = User.find(params[:id])
    @artworks = @user.artworks
    render json: @artworks
  end 

  def scheduled_emails
    @user = User.find(params[:id])
    @scheduled_emails = @user.schedules 
    render json: @scheduled_emails
  end


  private 

  def user_params 
    params.require(:user).permit(:username, :password, :f_name, :l_name, :email, :phone)
  end
  
end