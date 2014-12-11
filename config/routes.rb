Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root to: 'main#index'
  
  get 'contact' => 'pages#contact', as: 'contact'
  get 'about' => 'pages#about', as: 'about'

  get 'products' => 'products#index', as: 'products'
  get 'products/:id' => 'products#show', as: 'product'
  
  get 'categories' => 'categories#index', as: 'categories'
  get 'categories/:id' => 'categories#show', as: 'category'
  
  get 'search' => 'products#search_results', as: 'search_results'
  
  post 'add_item_cart/:id' => 'products#add_item_cart', as: 'add_item_cart'
  
  get 'item_cart' => 'products#item_cart', as: 'item_cart'
  
  get 'featured' => 'main#featured', as: 'featured'
  get 'new' => 'main#new', as: 'new'
end
