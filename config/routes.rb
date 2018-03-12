Rails.application.routes.draw do

  devise_for :users
  root 'static_pages#home'
	resources :recipes
	resources :ingredients

	get '/admin', to: 'static_pages#admin', as: 'admin'
  get '/add_ing_recipe', to: 'recipes#add_ing_recipe', as: 'add_ing_recipe'
  post '/add_ing_recipe', to: 'recipes#post_add_ing_recipe', as: 'post_add_ing_recipe'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
