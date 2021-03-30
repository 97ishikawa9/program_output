Rails.application.routes.draw do
  root to: 'programs#index'
  resources :programs, only: [:index, :new, :create, :show] do
    collection do
      get 'search'
    end
  end
end
