Rails.application.routes.draw do
  devise_for :admins, controllers: { registrations: "registrations"}

  resources :publications
  resources :researches
  resources :blogposts
  root to: 'home#index'

  resources :contacts, only: [:index]
  resources :services, only: [:index]
  resources :cvs, only: [:index]
  resources :teachings, only: [:index]
end
