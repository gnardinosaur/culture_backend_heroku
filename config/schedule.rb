#### NOT USING THIS FILE I CAN'T GET CRON TO WORK ON MACOS CATALINA ####

every :day, at: ['7:01am', '8:01am', '9:01am', '10:01am'] do
  rake 'email_task:send_daily_emails'
end

every 1.minute do
  rake "email_tasks:testing"
end