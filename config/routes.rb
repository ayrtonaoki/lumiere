Rails.application.routes.draw do
  devise_for :admins
  devise_for :users, skip: [:registrations]

  root to: "home#index"

  get "up" => "rails/health#show", as: :rails_health_check
  get 'assessments/:patient_id', to: 'assessments#index', as: 'assessments'
  post 'assessments/start_session', to: 'assessments#start_session', as: 'assessments_start_session'
  get 'backoffice', to: 'backoffice#index'
  resources :exercises, only: [:index, :new, :create]
  resources :patients, only: [:index, :new, :create]
end
