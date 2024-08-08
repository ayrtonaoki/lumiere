Rails.application.routes.draw do
  devise_for :admins
  devise_for :users, skip: [:registrations]

  root to: "home#index"

  get "up" => "rails/health#show", as: :rails_health_check

  resources :patient_exercises, only: [:index, :show, :new, :create] do
    member do
      patch 'success'
      patch 'failed'
      patch 'help'
    end

    collection do
      get 'start_session', to: 'patient_exercises#start_session'
    end
  end

  get 'backoffice', to: 'backoffice#index'

  resources :exercises, only: [:index, :new, :create]
  resources :patients, only: [:index, :new, :create]
end
