Rails.application.routes.draw do
  resources :items

  resources :orders, except: [:new, :edit] do
    resources :items, controller: 'sub_orders'
    post '/items/:nickname', to: 'sub_orders#create_with_nickname', as: 'create_with_nickname'
  end

  resources :products

  resources :product_categories

  resources :shops, except: :destroy
  resources :templates do
    collection do
      get :shop
    end
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {registrations: 'users/registrations'}
  root :to => "visitors#index"
end
