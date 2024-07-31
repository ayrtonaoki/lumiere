Rails.application.routes.draw do
  devise_for :admins
  devise_for :users, skip: [:registrations]

  root to: "home#index"

  get "up" => "rails/health#show", as: :rails_health_check

  resources :assessments, only: [:show] do
    collection do
      get 'start_session', to: 'assessments#start_session'
    end
  end

  resources :patient_exercises do
    member do
      patch 'success'
      patch 'failed'
      patch 'help'
    end
    get 'patient_exercises', to: 'patient_exercises#index'
  end

  get 'backoffice', to: 'backoffice#index'

  resources :exercises, only: [:index, :new, :create]
  resources :patients, only: [:index, :new, :create]
end
