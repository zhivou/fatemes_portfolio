Rails.application.routes.draw do
  resources :blogposts
  root to: 'home#index'

  resources :contacts, only: [:index]
end
