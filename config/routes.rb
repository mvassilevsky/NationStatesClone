NationStatesClone::Application.routes.draw do
  root to: 'sessions#new'

  resources :nations, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]

  namespace :api, defaults: { format: :json } do
    resources :nations
    resources :issues
    post 'issues/:id/respond', to: 'issues#respond' #id here should be the
                                                    #option id, not the issue id
    post 'issues/dismiss', to: 'issues#dismiss'
  end

end
