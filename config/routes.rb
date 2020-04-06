Rails.application.routes.draw do
  root 'posts#index'

  get '/signup' => 'users#new'
  post '/signup'=> 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  delete '/logout' => 'sessions#destroy'


  resources :categories, only: [:index, :show]
  # resources :comments
  resources :users, except: [:delete]
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
