Rails.application.routes.draw do

  devise_for :users
  root to: 'products#index'

  get '/' => 'products#index'
  get '/products' => 'products#index'

  get '/colorthief' => 'products#colorthief'
  get '/vibrant' => 'products#vibrant'

  get '/products/new' => 'products#new'
  post '/products' => 'products#create'
  get '/products/:id/edit' => 'products#edit'
  patch '/products/:id' => 'products#update'
  delete '/products/:id' => 'products#destroy'

  get '/products/:id' => 'products#show'
  get '/colors' => 'products#colors'
  get '/user' => 'users#index'

  get '/traincase' => 'traincases#index'
  post '/traincase' => 'traincases#create'

  get '/wishlist' => 'wishlists#index'
  post '/wishlist' => 'wishlists#create'

  get '/dupes' => 'dupes#index'
  post '/dupes' => 'dupes#create'
  delete '/dupes/:id' => 'dupes#destroy'

  get '/votes' => 'votes#index'
  post '/votes' => 'votes#create'
  delete '/votes/:id' => 'votes#destroy'

  get '/tags' => 'tags#index'
  post '/tags' => 'tags#create'
  get '/tags/:id/edit' => 'tags#edit'
  patch '/tags/:id' => 'tags#update'
  delete '/tags/:id' => 'tags#destroy'
end
