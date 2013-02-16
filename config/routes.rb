Nuhacks::Application.routes.draw do
  devise_for :users

  root :to => 'application#index'
end
