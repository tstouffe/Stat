Blog::Application.routes.draw do
  

  devise_for :users
  
  root 'posts#index'
  
  resources :posts do
    resources :comments
    member do
      post 'add_tag'
      delete 'delete_tag'
    end
    collection do 
      get 'archives'
      get 'tag'
    end
  end
  
  
  
  resources :tags
  
  resources :users do
    collection do
      post 'auth'
    end
  end
end
