Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  get '/chat' => 'multiplayer#chat'
  get '/movement' => 'multiplayer#movement'
  get '/joined' => 'multiplayer#joined'
  devise_for :players, controllers: { sessions: "players/sessions" }
  match '/message/new', to: 'welcome#new_message', via: 'post', as: 'new_message'
end
