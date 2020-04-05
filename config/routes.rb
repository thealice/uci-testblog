Rails.application.routes.draw do
  
  get '/signup' => 'users#new'
  post '/signup'=> 'users#create'
  
  root 'posts#index'

  resources :categories, only: [:index, :show]
  # resources :comments
  resources :users, except: [:delete]
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
