class IssuesChannel < ApplicationCable::Channel
  def subscribed
    stream_from stream_name
  end

  # generic
  # def receive(data)
  #   ActionCable.server.broadcast stream_name, data.fetch('message')
  # end

  def new_message(data)
    ActionCable.server.broadcast stream_name, data.fetch('message')
  end

  private

    def stream_name
      "issues_channel_#{issue_id}"
    end

    def issue_id
      params.fetch('data').fetch('id')
    end
end
