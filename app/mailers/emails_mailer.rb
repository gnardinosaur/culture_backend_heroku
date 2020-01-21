class EmailsMailer < ApplicationMailer
  default from: 'metartmailer@gmail.com'

  def welcome_email
    emails.each do |email|
      @user = email.schedule.user
      @artwork = email.artwork
      mail(to: @user.email, subject: 'Culture App - Art Of The Day')
    end 
  end

end
