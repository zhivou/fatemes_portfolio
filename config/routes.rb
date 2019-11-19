Rails.application.routes.draw do
  resources :blogposts
  root to: 'home#index'

  resources :about, only: [:index]
end
