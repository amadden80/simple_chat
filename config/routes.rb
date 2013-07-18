SimpleChatFour::Application.routes.draw do
  root to: 'chats#index'

  post '/chats/send_chat', to: 'chats#send_chat', as: 'send_chat'

  get 'sessions/new' => 'sessions#new'
  post 'sessions' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

end
