Rails.application.routes.draw do

  root to: 'products#index'

  get '/index' => 'products#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  
  get '/about' => 'about#about'

  resources :categories, param: :name, only: [:show]
  resources :products, only: [:index, :show] 

  resource :cart, only: [:show] do
    post   :add_item
    post   :remove_item
  end

  resources :orders, only: [:create, :show]

  namespace :admin do
    root to: 'dashboard#show'
    resources :categories, param: :name, except: [:edit, :update, :show]
    resources :products, except: [:edit, :update, :show]
    resources :sales, only: [:index, :new]
  end

end
