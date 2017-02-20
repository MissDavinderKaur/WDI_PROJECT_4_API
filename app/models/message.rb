class Message < ApplicationRecord
  validates :sender_id, presence: true,
  validates :receiver_id, presence: true,
  belongs_to :issue

end