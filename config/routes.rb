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

end
