class MessageSerializer < ActiveModel::Serializer
  attributes :id, :issue_id,:msg_text, :sender, :receiver, :issue
  # :sender_id, :receiver_id
end
