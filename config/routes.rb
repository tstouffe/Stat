#<<<<<<< HEAD
#Blog::Application.routes.draw do
  
#  resources :users
  
#  devise_for :users
  
#  root 'users#index'
#=======
Stat::Application.routes.draw do

  devise_for :users
  
	resources :users

	resources :profiles do
		
		resources :works do
			resources :duties
		end
		
		resources :schools do
			resources :courses
		end
		
		resources :proficiencies
	end
	
	root to: "profiles#index"
#>>>>>>> 93f3d961054e01f321b6a96c225fbed2c8f7f258

end
