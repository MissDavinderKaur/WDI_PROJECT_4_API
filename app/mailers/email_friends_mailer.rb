class EmailFriendsMailer < ApplicationMailer
  default from: 'letstalk@friendinneed.com'

  def find_friends_email(emailsArray)
    @url  = 'http://localhost:7000/login'
    mail(to: emailsArray, subject: 'Let\'s Talk - There is a Friend In Need in your city!')
  end
end
