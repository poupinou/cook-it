Rails.application.routes.draw do

	root 'static_pages#home'
  
  devise_for :users
	resources :recipes
	resources :ingredients

	get 'users/:id', to:'users#show', as: 'profil'
  get 'users' , to:'users#index'

	get '/admin', to: 'static_pages#admin', as: 'admin'
	get '/about', to: 'static_pages#about', as: 'about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
