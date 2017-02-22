class Issue < ApplicationRecord
  belongs_to :user
  has_many :messages

  before_save :send_emails

  private
  def send_emails
    users = User.where(city: self.user.city)

    emailsArray = []
    for user in users
      emailsArray.push(user.email)
    end
    EmailFriendsMailer.find_friends_email(emailsArray).deliver_now
  end
end
