Rails.application.routes.draw do
  resources :programs
  get 'welcome/index'
  resources :player_cards, only: [:index, :show], path: 'players'

  root 'welcome#index'
end
