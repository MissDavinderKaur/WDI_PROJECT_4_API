class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :alias, presence: true, uniqueness: true
  validates :sector, presence: true
  validates :city, presence: true
  has_many :issues
  has_many :received_messages, foreign_key: :receiver_id, class_name: "Message"
  has_many :sent_messages, foreign_key: :sender_id, class_name: "Message"
end
