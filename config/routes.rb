Rails.application.routes.draw do
  resources :items

  resources :sub_orders

  resources :orders

  resources :products

  resources :product_categories

  resources :shops

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root :to => "visitors#index"
end

