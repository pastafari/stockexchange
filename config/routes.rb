Sampleapp::Application.routes.draw do
  root :to => "home#index"
  resources :users, :only => [:index, :show, :edit, :update, :new ]
  match '/signup' => 'users#new', :as => :signup
  match '/signin' => 'sessions#new', :as => :signin
  match '/signout' => 'sessions#destroy', :as => :signout
end
