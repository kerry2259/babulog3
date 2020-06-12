Rails.application.routes.draw do
  devise_for :users

  root "babies#index"
  resources :users, only: [:index, :edit, :update]
  resources :babies, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
end
