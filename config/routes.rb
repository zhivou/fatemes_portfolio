Rails.application.routes.draw do
  devise_for :admins,
             controllers: { registrations: "registrations"},
             path: '',
             path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  resources :researches
  resources :blogposts
  root to: 'home#index'

  resources :contacts, only: [:index]
  resources :services, only: [:index]
  resources :cvs, only: [:index]
  resources :teachings, only: [:index]
end
