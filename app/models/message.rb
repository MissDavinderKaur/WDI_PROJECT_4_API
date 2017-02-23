class Message < ApplicationRecord
  validates :sender_id, presence: true
  validates :receiver_id, presence: true
  belongs_to :issue
  belongs_to :sender, foreign_key: :sender_id, class_name: "User"
  belongs_to :receiver, foreign_key: :receiver_id, class_name: "User"
end
