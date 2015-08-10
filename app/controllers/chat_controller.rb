class ChatController < ApplicationController
  def index
    @chats = Chat.all
  end

  def create
    dic = Dictionary.where(ask: params[:content]).sample

    if dic.nil?
      redirect_to '/dictionary/new'
    else
      Chat.create(chat_type: "user", chat_content: dic.ask)
      Chat.create(chat_type: "bot", chat_content: dic.answer)
      redirect_to '/'
    end

  end
end
