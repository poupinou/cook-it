Rails.application.routes.draw do

resources :recipes do
  member do
    put "like", to: "recipes#upvote"
    put "dislike", to: "recipes#downvote"
  end
end
	root 'static_pages#home'

  devise_for :users
	resources :recipes
	resources :ingredients

	get 'users/:id', to:'users#show', as: 'profil'
  get 'users' , to:'users#index'

	get '/admin', to: 'static_pages#admin', as: 'admin'
	get '/about', to: 'static_pages#about', as: 'about'

	get '/users/:id/liste', to: 'static_pages#liste', as: 'liste'
	get '/users/:id/frigo', to: 'static_pages#frigo', as: 'frigo'
  get '/add_ing_recipe', to: 'recipes#add_ing_recipe', as: 'add_ing_recipe'
  post '/add_ing_recipe', to: 'recipes#post_add_ing_recipe', as: 'post_add_ing_recipe'
	delete 'delete_ing_recipe', to: 'recipes#destroy_ing_recipe', as: 'delete_ing_recipe'

  post '/', to: 'lists#add_to_list', as: 'add_to_list'

    get '/liste', to: 'static_pages#send_sms', as: 'send'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
