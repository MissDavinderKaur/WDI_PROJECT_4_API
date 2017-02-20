class MessageSerializer < ActiveModel::Serializer
  attributes :id, :category, :messageText, :sender_id, :receiver_id
end
