Rails.application.routes.draw do

  root 'welcome#index'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  

  resource :sessions, only: [:new, :create, :destroy]
  resources :users
  
end