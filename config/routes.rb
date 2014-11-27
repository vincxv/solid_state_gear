Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root to: 'main#index'
  
  get 'contact' => 'contact#index', as: 'contact'
  get 'about' => 'about#index', as: 'about'

  get 'products' => 'products#index', as: 'products'
  get 'products/:id' => 'products#show', as: 'product'
  
  get 'categories' => 'categories#index', as: 'categories'
  get 'categories/:id' => 'categories#show', as: 'category'
end
