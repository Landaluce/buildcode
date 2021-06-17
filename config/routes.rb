Rails.application.routes.draw do
  devise_for :users
  resources :stories
  resources :appointments
  resources :patients
  resources :doctors
  root to:  'pages#index'
end
