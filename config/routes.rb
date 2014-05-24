Rails.application.routes.draw do
  resources :products

  resources :product_categories

  resources :shops

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root :to => "visitors#index"
end
