class IssueSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :category
  has_many :messages
  belongs_to :user
end
