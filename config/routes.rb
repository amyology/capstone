Rails.application.routes.draw do

  devise_for :users
  root to: 'products#index'

  get '/' => 'products#index'
  get '/products' => 'products#index'
  get '/products/:id' => 'products#show'

  get '/colors' => 'products#colors'

  get '/user' => 'users#index'

  get '/traincase' => 'traincases#index'
  post '/traincase' => 'traincases#create'

  get '/wishlist' => 'wishlists#index'
  post '/wishlist' => 'wishlists#create'

  get '/dupes' => 'dupes#index'
  post '/dupes' => 'dupes#create'

  get '/votes' => 'votes#index'
  post '/votes' => 'votes#create'

end
