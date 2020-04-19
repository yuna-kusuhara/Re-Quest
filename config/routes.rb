Rails.application.routes.draw do
  devise_for :users
  root "requests#index"

  resources :users, only: [:edit, :update,:destroy] do
    resources :requests, only: [:new, :create]
  end
  resources :requests, only: [:index, :edit, :update] do
    resources :messages, only: [:index, :create]
    resources :request_users, only: [:new, :create]
  end

  resources :maps, only: [:new, :create, :index, :show]

end
