Rails.application.routes.draw do
  resources :blogposts
  root to: 'home#index'
  resources :blogs
end
