class EmailsMailer < ApplicationMailer
  default from: 'metartmailer@gmail.com'

  def test
    @user = params[:user]
    mail(to: @user.email, subject: 'Met Art Email Testing')
  end

end
