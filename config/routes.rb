Rails.application.routes.draw do


 

  root 'welcome#index'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  # delete '/sessions' => "sessions#destroy", as: 'session_delete'
  delete '/signout' => 'sessions#destroy'

  resources :sessions, only: [:new, :create]
  resources :users, 
            :attractions do
              resources :rides, only: [:new, :create]
            end
  
end