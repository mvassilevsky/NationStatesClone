NationStatesClone::Application.routes.draw do
  root to: 'sessions#new'

  resources :nations, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]

end
