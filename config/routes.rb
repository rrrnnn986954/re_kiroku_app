Rails.application.routes.draw do
  devise_for :users

  root to: "records#index"
  resources :records, only: [:index, :show]

  resources :sessions, only: [:create, :update]
  resources :actions, only: [:create, :update, :edit]
  

end
