Rails.application.routes.draw do
  devise_for :admins, skip: [:registrations]
  devise_for :users, skip: [:registrations]

  root to: "home#index"

  get "up" => "rails/health#show", as: :rails_health_check

  resources :patient_exercises, only: [:index, :show, :new, :create] do
    member do
      patch 'success'
      patch 'deduct_success'
      patch 'failed'
      patch 'deduct_failed'
      patch 'help'
      patch 'deduct_help'
    end

    collection do
      get 'start_session', to: 'patient_exercises#start_session'
      get 'select_exercises', to: 'patient_exercises#select_exercises'
    end
  end

  get 'backoffice', to: 'backoffice#index'

  resources :exercises, only: [:index, :new, :create]
  resources :patients, only: [:index, :new, :create]
  resources :therapists, only: [:index, :new, :create]
end
