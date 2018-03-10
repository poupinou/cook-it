Rails.application.routes.draw do

  devise_for :users
  root 'static_pages#home'

	get '/admin', to: 'static_pages#admin', as: 'admin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
