Rails.application.routes.draw do
  get 'welcome/index'
  resources :player_cards, only: [:index, :show], path: 'players'

  root 'welcome#index'
end
