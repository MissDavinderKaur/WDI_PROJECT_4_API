class IssueSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :category, :active, :messages
  # :last_sender
  belongs_to :user
  has_many :messages

  # def last_sender
  #     User.find(object.messages[-1]['sender_id'])
  # end
end
