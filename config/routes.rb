Myflix::Application.routes.draw do
  get 'ui(/:action)', controller: 'ui'

  get '/home', to: 'videos#index'


  resources :videos, only: [:show, :index]
  resources :categories, only: [:show]
end
