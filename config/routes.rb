Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  devise_for :players, controllers: { sessions: "players/sessions" }
end
