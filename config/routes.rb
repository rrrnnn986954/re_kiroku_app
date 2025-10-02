Rails.application.routes.draw do
  devise_for :users

  root to: "records#index"

  resources :sessions, only: [:create, :update]
  resources :records, only: [:index, :show]

  resources :actions, only: [:create, :update, :edit]
end
