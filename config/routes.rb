Rails.application.routes.draw do
  resources :items

  resources :orders do
    resources :items, controller: 'sub_orders'
  end

  resources :products

  resources :product_categories

  resources :shops, except: :destroy

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root :to => "visitors#index"
end

