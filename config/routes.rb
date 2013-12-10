Blog::Application.routes.draw do
  
  devise_for :users
  
  root 'users#profile'
  
  resources :users

end