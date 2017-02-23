class MessageSerializer < ActiveModel::Serializer
  attributes :id, :issue_id, :sender_id, :receiver_id, :msg_text, :sender, :receiver, :issue
end
