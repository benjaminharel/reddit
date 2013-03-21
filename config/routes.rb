Reddit::Application.routes.draw do
  resources :users

  match 'users/new' => 'users#new', :via => :post
  match 'users/show' => 'users#show', :via => :post

  match 'queries' => 'users#show', :via => :get
  match 'search' => 'users#new', :via => :get

  root :to => "users#index"

end
