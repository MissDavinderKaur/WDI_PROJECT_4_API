require 'sendgrid-ruby'
include SendGrid

class EmailFriendsMailer < ApplicationMailer

  def find_friends_email(emailsArray, title)
    @title = title
    @url  = 'http://localhost:7000/login'
    mail(to: emailsArray, subject: 'Let\'s Talk - There is a Friend In Need in your city!')
  end
end
