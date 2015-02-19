NationStatesClone::Application.routes.draw do
  root to: 'sessions#new'

  resources :nations, only: [:new, :create]
  post 'nations/create/guest', to: 'nations#guest_create'
  resource :session, only: [:new, :create, :destroy]

  namespace :api, defaults: { format: :json } do
    resources :nations
    get 'get_issues', to: 'nations#get_issues'
    resources :issues
    post 'issues/:id/respond', to: 'issues#respond' #id here is the option id,
                                                    #not the issue id
    post 'issues/dismiss', to: 'issues#dismiss'
  end

end
