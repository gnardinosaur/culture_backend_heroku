class Api::V1::EmailsController < ApplicationController
  skip_before_action :authorized, only: [:create, :index]

  def create
    @user = User.find_by(id: 1)
    if @user.valid?
      EmailsMailer.with(user: @user).test.deliver_now
    end
  end 

  def index 
    @emails = Email.all
    render json: @emails 
  end

end
