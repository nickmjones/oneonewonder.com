Rails.application.routes.draw do
  resources :goals
  resources :events
  resources :colleagues
  resources :teams
  devise_for :users
  get 'dashboard', to: "dashboard#index"
  root to: "dashboard#index"
end
