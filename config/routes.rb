Rails.application.routes.draw do


  root 'welcome#index'



  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  post '/signout' => 'sessions#destroy'
  
  resources :users

end