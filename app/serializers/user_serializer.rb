class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :alias, :sector, :city
  has_many :issues
  has_many :received_messages, foreign_key: :receiver_id, class_name: "Message"
  has_many :sent_messages, foreign_key: :sender_id, class_name: "Message"
end
