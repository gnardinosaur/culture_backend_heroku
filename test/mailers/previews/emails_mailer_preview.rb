# Preview all emails at http://localhost:3000/rails/mailers/results_mailer
class EmailsMailerPreview < ActionMailer::Preview
  def create
    @user = User.find_by(id: 6)
    if @user.valid?
      EmailsMailer.with(user: @user).test.deliver_now
    end
  end 
end
