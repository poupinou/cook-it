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
  resources :tags
  resources :tagusers
  resources :tagrecipes
  resources :quotes

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


  post '/liste', to: 'static_pages#send_sms', as: 'send_sms'


  get 'liste', to: 'static_pages#send_mail', as: 'send_mail'

  post '/liste3', to: 'lists#reset_list_ing', as: 'liste_reset'

  get '/inbobunwetrust', to: 'users#admin', as: 'god'

  post 'add_fridge', to: 'static_pages#add_fridge', as: 'add_fridge'

  post '/find_recipe', to: 'static_pages#find_recipe', as: 'find_recipe'

  post '/cancel_fridge', to: 'static_pages#cancel_fridge', as: 'cancel_fridge'

  get '/logyou', to: 'static_pages#logyou', as: 'logyou'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
