Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root to: 'main#index'

  get 'products/:id' => 'products#show', as: 'product'
  get 'categories' => 'categories#index', as: 'category'
end
