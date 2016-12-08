# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_setting = {
  :port           => ENV['MAILGUN_SMTP_PORT'],
  :address        => ENV['MAILGUN_SMTP_SERVER'],
  :user_name      => ENV['MAILGUN_SMTP_LOGIN'],
  :password       => ENV ['MAILGUN_SMTP_PASSWORD'],
  :domain         => 'http://warm-tundra-10048.herokuapp.com/'.
  :authentication => :plain,
}
ActionMail::Base.delivery_method = :smtp