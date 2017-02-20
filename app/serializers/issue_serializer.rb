class IssueSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_one :messages
end
