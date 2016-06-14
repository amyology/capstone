Rails.application.routes.draw do

  devise_for :users
  root to: 'products#index'

  get '/' => 'products#index'
  get '/products' => 'products#index'
  get '/products/:id' => 'products#show'

  get '/colors' => 'products#colors'

  get '/user' => 'users#index'
  get '/traincase' => 'traincases#index'
  get '/wishlist' => 'wishlists#index'

end
