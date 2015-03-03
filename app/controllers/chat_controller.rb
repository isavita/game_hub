class ChatController < WebsocketRails::BaseController
  def index
  end

  def initialize_session
    controller_store[:message_count] = 0
  end

  def new_message
    tmp_message = Message.new message
    if tmp_message.save
      send_message :new_message_success, message, namespace: :chat
    else
      send_message :new_message_fail, message, namespace: :chat
    end
  end
end
