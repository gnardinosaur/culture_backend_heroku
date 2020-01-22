class Email < ApplicationRecord
  belongs_to :artwork
  belongs_to :schedule

  # Below method was to be use for compiling dialy email sends and passing to emails_mailer
  # def compile_sends(time_now)
  #   # get all emails that are not sent yet
  #   @sends = Email.where(:sent => false)
  #   #filter unsent emails to only get the onese that are younger than right now (instead of DateTime.now use a passed in argument which is the time from the rake/schedule task - eg. 7am, 9am, etc) 
  #   @all_emails = []
  #   @sends.each do |send|
  #     if send.send_date_time < time_now
  #       @all_emails.push(send)
  #     end
  #   end
  #   @all_emails
  # end

end
