class IssueSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :category, :messages
  belongs_to :user
end
