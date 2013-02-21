Nuhacks::Application.routes.draw do
  # Site routes
  root :to => 'site#index'

  # Session routes
  get "login"     => "sessions#new", :as => "login"
  post "sessions" => "sessions#create", :as => "sessions"
  delete "logout" => "sessions#destroy", :as => "logout"

  # User routes
  get "signup" => "users#new", :as => "signup"
  resources :users

  # TODO BELOW
  resources :events, :except => [:index, :show]
end
