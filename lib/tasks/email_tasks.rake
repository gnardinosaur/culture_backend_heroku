#### NOT USING THIS FILE I CAN'T GET CRON TO WORK ON MACOS CATALINA ####

namespace :email_tasks do
  desc "testing"
  task testing: :environment do
    puts "you executed the emails_tasks:testing rake task"
    # @user = User.find(1)
    # EmailsMailer.testing(@user).deliver!
  end
end



