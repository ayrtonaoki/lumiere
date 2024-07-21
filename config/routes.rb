Rails.application.routes.draw do
  devise_for :admins
  devise_for :users, skip: [:registrations]

  root to: "home#index"

  get "up" => "rails/health#show", as: :rails_health_check
  get 'assessments', to: 'assessments#index'
  get 'backoffice', to: 'backoffice#index'
  resources :exercises, only: [:index, :new, :create]
  resources :patients, only: [:index, :new, :create]
end
