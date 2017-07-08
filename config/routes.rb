Rails.application.routes.draw do

  get 'comments/create'

  ActiveAdmin.routes(self)
  devise_for :users
	root 'books#index'
  resources :authors
  resources :categories
  resources :books do
  	resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
