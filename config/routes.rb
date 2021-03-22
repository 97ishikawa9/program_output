Rails.application.routes.draw do
  root to: 'programs#index'
  resources :programs, only: [:index, :new, :create, :destroy, :edit] do
    collection do
      get 'search'
    end
  end
end
