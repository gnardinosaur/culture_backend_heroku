class Api::V1::ResultsController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    @user = User.find_by(id: 6)
    if @user.valid?
      ResultsMailer.with(user: @user).test.deliver_now
    end
  end 

end
