class ChatsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_chats, only: [:index]
  
  def set_chats
    @chats = Chat.all.order("created_at DESC").limit(10).offset(params[:recordNum])
  end

  def add
    chat = Chat.all.order("created_at DESC").first
    render json: chat
  end

  def index
    render json: @chats
  end

  def create
    chat = Chat.new(user: params[:username],
                    body: params[:body],
                    date: params[:date]
                   )
    if chat.save
      ActionCable.server.broadcast 'chat_channel', content: chat
    else
      render status: 500
    end
  end

  def destroy
    if Chat.destroy(params[:id])
    else
      render status: 500
    end
  end
end
