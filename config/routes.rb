Rails.application.routes.draw do
  devise_for :users

  root "babies#index"
  resources :users, only: [:index, :edit, :update]
  resources :shops, only: [:index]
  resources :events, only: [:index]
  resources :babies, only: [:index, :new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
end
