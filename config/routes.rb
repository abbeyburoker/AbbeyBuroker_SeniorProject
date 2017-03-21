Rails.application.routes.draw do
  
  get 'logout/index'

  resources :message_boards
  resources :directories
  get 'sessions/new'

  resources :users
  
  get '/signup', to: 'users#new'

  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  get 'users/show'

  get 'home/index'

  root 'home#index'

  get 'directories/index'

  get 'logout/index' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
