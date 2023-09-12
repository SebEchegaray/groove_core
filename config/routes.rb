Rails.application.routes.draw do
  root to: "home#index"
  get 'login', to: 'sessions#new', as: 'login'
  post 'create_admin', to: 'sessions#create_admin'

  namespace :admin do
    get 'dashboard', to: 'dashboard#index'
  end

  resources :past_events, only: [:index, :show]
  resources :events, only: [:new, :create]
  resources :showcases, only: [:new, :create]
end
