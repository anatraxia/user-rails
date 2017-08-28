Rails.application.routes.draw do
  resources :articles
  get 'sessions/index'

  get 'user/index'
  # get 'user/new'

  # get 'secret/index'

  get 'home/index'
  root 'home#index'

  get '/secret' => 'secret#index'
  get '/signup' => 'user#new'
  post '/users' => 'user#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
