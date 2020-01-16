# Preview all emails at http://localhost:3000/rails/mailers/results_mailer
class ResultsMailerPreview < ActionMailer::Preview
  def create
    @user = User.find_by(id: 6)
    if @user.valid?
      ResultsMailer.with(user: @user).test.deliver_now
    end
  end 
end
