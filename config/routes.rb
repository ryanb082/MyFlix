Myflix::Application.routes.draw do
  get 'ui(/:action)', controller: 'ui'

  root to: 'pages#front'
  
  get '/home', to: 'videos#index'
  get 'sign_in', to: 'sessions#new'
  get 'sign_out', to: 'sessions#destroy'
  resources :videos, only: [:show, :index] do
    collection do
      get :search, to: 'videos#search'
    end
    resources :reviews, only: [:create]
  end
  resources :categories, only: [:show]
  resources :queue_items, only: [:create, :destroy]
  post 'update_queue', to: 'queue_items#update_queue'

  get '/my_queue', to: 'queue_items#index'

  get '/register', to: 'users#new'
  resources :users, only: [:create]
  resources :sessions, only: [:create]
end
