class EmailsMailer < ApplicationMailer
  default from: 'metartmailer@gmail.com'

  def welcome_email
    @user = params[:user]
    @artwork = params[:artwork]
    @search_info = params[:search_info]
    @schedule_info = params[:schedule_info]
    mail(to: @user.email, subject: 'Culture App - Art Of The Day')
  end

end
