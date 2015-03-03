# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
new_message = {
  message: 'I am starting to use websocket.', 
  completed: false
}

dispatcher = new WebSocketRails('localhost:3000/websocket')

dispatcher.trigger('chat.new_message', new_message)

dispatcher.bind 'chat.new_message_success', (message) ->
  console.log "Message: " + message.content
// jQuery ->
  // window.chatController = new Chat.Controller($('#chat').data('uri'), true);
  // class Chat.Controller
  //   constructor: (url, useWebSockets) ->
  //     messageQueue = []
  //     @dispatcher = new WebSocketRails(url,useWebSockets)
  //     @dispatcher.on_open = @createGuestUser
  //     @bindEvents()

  //   bindEvents: =>
  //     @dispatcher.bind 'new_message', @newMessage
  //     @dispatcher.bind 'user_list', @updateUserList
  //     $('input#user_name').on 'keyup', @updateUserInfo
  //     $('#send').on 'click', @sendMessage
  //     $('#message').keypress (e) -> $('#send').click() if e.keyCode == 13

  //   newMessage: (message) =>
  //     @messageQueue.push message
  //     @shiftMessageQueue() if @messageQueue.length > 15
  //     @appendMessage message

  //   sendMessage: (event) =>
  //   event.preventDefault()
  //   message = $('#message').val()
  //   @dispatcher.trigger 'new_message', {user_name: @user.user_name, msg_body: message}
  //   $('#message').val('')