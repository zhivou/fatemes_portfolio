Rails.application.routes.draw do
  resources :teachings, except: [:show]
  devise_for :admins,
             controllers: { registrations: "registrations"},
             path: '',
             path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  resources :researches
  resources :blogposts
  root to: 'home#index'

  resources :contacts, only: [:index]
  resources :cvs, only: [:index]

  get 'admin_panel', to: "admin_panel#index"
  post 'admin_panel/update_home_page', to: "admin_panel#update_home_page"
  post 'admin_panel/update_research_page', to: "admin_panel#update_research_page"
  post 'admin_panel/update_contact_page', to: "admin_panel#update_contact_page"
  post 'admin_panel/update_cv_page', to: "admin_panel#update_cv_page"
end
