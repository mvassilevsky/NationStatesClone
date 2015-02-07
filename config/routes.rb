NationStatesClone::Application.routes.draw do
  root to: 'sessions#new'

  resources :nations, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]

  namespace :api, defaults: { format: :json } do
    resources :nations
    resources :issues
  end

end
