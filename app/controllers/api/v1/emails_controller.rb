class Api::V1::EmailsController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    @user = User.find_by(id: 6)
    if @user.valid?
      EmailsMailer.with(user: @user).test.deliver_now
    end
  end 

end
