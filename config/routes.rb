Rails.application.routes.draw do
  get 'welcome/index'
  #get '/players', to: 'player_cards#index', as: 'players'
  resources :player_cards, only: [:index], as: 'players'


  root 'welcome#index'
end
