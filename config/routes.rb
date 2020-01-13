Rails.application.routes.draw do
  root "requests#index"
  get 'requests/index'

end
