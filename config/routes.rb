Sampleapp::Application.routes.draw do


  root :to => "home#index"
  resources :users, :only => [:show, :new, :create] do
    match 'portfolio' => 'users#portfolio', :as => 'portfolio', :via => :get
  end

  get "stocks" => 'stocks#index', :as => :stocks

  match '/signup' => 'users#new', :as => :signup, :via => :get
  match '/login' => 'sessions#create', :as => :login
  match '/signout' => 'sessions#destroy', :as => :signout
end
