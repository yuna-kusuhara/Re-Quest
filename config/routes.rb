Rails.application.routes.draw do
  devise_for :users
  root "requests#index"
  get 'requests/index'

end
