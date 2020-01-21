class Api::V1::EmailsController < ApplicationController
  skip_before_action :authorized, only: [:create, :index]

  # deliver one email immediately on Schedule creation (welcome email) and then subsequent emails later based on rake task 

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
