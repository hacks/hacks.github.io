Nuhacks::Application.routes.draw do
  devise_for :users

  resources :users, :only => [:index, :show]
  resources :events, :except => [:index, :show]

  root :to => 'site#index'
end
