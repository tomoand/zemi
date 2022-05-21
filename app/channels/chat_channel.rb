class ChatChannel < ApplicationCable::Channel
#  before_action :authenticate_user!
  
  def subscribed
    stream_from "chat_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    stop_all_streams
  end
end
