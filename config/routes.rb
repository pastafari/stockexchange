Sampleapp::Application.routes.draw do
  root :to => "home#index"
  resources :users, :only => [:show, :new, :create]
  match '/signup' => 'users#new', :as => :signup, :via => :get
  match '/login' => 'sessions#create', :as => :login
  match '/signout' => 'sessions#destroy', :as => :signout
end
