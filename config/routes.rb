Rails.application.routes.draw do

  get 'car/index'
  resources :my_shopping_carts, only: [:create,:destroy]
  get '/add/:product_id', as: :add_to_cart, to: 'my_shopping_carts#create'
  post '/pay', to: 'payments#create'
  get '/checkout', to: 'payments#checkout'
  resources :departaments
  resources :products
  resources :suppliers
  root "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
