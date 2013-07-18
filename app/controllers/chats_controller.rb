class ChatsController < ApplicationController

  def index
  end

  def send_chat
    puts params

    data = {username: current_user.username,
                avatar: current_user.image.thumb.url,
                text: params[:chat_input]}

    #Pusher.trigger(channel_name, event_name, data_to_send_with_event)
    Pusher.trigger(params[:channel], 'message', data)
    render nothing: true
  end

end