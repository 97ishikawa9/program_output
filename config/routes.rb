Rails.application.routes.draw do
  root to: 'programs#index'
  resources :programs, only: [:new, :create]
end
