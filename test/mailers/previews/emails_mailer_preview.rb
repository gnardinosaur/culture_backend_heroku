# Preview all emails at http://localhost:3000/rails/mailers/emails_mailer
class EmailsMailerPreview < ActionMailer::Preview
  def welcome_email
    @user = User.find(1)
    @artwork = Artwork.find(139)
    @search_params = {
      department: "blah",
      dates: "1 - 47",
      highlight: false
    }
    @schedule_params = {
      time: 11,
      numDays: 33
    }
    if @user.valid?
      EmailsMailer.with(user: @user, artwork: @artwork, search_info: @search_params, schedule_info: @schedule_params).welcome_email
    end
  end
end
