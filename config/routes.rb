Rails.application.routes.draw do

  resources :message_boards

  resources :messages

  resources :directories

  get 'sessions/new'

  resources :users
  
  get '/signup', to: 'users#new'

  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  get 'users/show'

  get 'home/index'

  get 'home/new'

  root 'home#new'

  get 'directories/index'

  get 'message_boards/index'

  get 'message_boards/new'

  get 'logout/index' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
