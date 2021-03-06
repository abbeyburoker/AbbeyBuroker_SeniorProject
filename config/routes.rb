Rails.application.routes.draw do

  resources :resources
  get 'calendar/index'

  get 'calendar/new'

  resources :questions
  resources :message_boards

  resources :messages do
    resources :comments  
  end


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

  get 'calendar/index'

  get 'directories/index'

  get 'directories/search'

  post 'directories/display'

  get 'resources/index'

  post 'resources/display'

  get 'questions/index'

  get 'message_boards/index'

  get 'message_boards/new'

  get 'logout/index' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
