class IssueSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :category, :active
  belongs_to :user
  has_many :messages
end
