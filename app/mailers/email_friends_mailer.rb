require 'sendgrid-ruby'
include SendGrid

class EmailFriendsMailer < ApplicationMailer

  # sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])

  def find_friends_email(emailsArray)
    @url  = 'http://localhost:7000/login'
    mail(to: emailsArray, subject: 'Let\'s Talk - There is a Friend In Need in your city!')
  end
end
