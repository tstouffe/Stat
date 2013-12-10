Blog::Application.routes.draw do
  
  resources :users
  
  devise_for :users
  
  root 'users#index'

end