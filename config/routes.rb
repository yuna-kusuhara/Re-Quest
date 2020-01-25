Rails.application.routes.draw do
  devise_for :users
  root "requests#index"
  resources :users, only: [:edit, :update,:destroy]
  resources :requests, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end

end
