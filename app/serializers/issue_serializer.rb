class IssueSerializer < ActiveModel::Serializer
  attributes :id, :owner_id, :title, :category
end
