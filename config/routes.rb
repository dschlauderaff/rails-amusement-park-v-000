Rails.application.routes.draw do


  root 'welcome#index'



  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  post '/signout' => 'sessions#destroy'

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  
  resources :users

  resource :sessions, only: [:new, :create, :destroy]

end