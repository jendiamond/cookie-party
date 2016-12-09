Rails.application.routes.draw do

  resources :vote_cards
  resources :entries
  root 'static_pages#index'
end
