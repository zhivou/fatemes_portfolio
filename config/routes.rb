Rails.application.routes.draw do
  resources :researches
  resources :blogposts
  root to: 'home#index'

  resources :contacts, only: [:index]
  resources :services, only: [:index]
  resources :cvs, only: [:index]
  resources :teachings, only: [:index]
end
