Rails.application.routes.draw do

  resource :results, :only => [:show]

  resources :vote_cards

  resources :entries

  root 'static_pages#index'
end
