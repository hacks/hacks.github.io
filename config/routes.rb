Nuhacks::Application.routes.draw do
  devise_for :users

  resources :users, :only => [:index, :show] do
    resources :events
  end

  root :to => 'site#index'
end
