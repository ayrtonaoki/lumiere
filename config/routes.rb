Rails.application.routes.draw do
  devise_for :admins
  devise_for :users, skip: [:registrations]

  get "up" => "rails/health#show", as: :rails_health_check
  root to: "home#index"
  get 'assessment', to: 'assessment#index'
  get 'backoffice', to: 'backoffice#index'
end
