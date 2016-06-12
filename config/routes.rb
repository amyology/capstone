Rails.application.routes.draw do

  get '/' => 'products#index'
  get '/products' => 'products#index'
  get '/colors' => 'colors#index'
  get '/traincase' => 'traincases#index'
  get '/wishlist' => 'wishlists#index'
  get '/user' => 'users#index'

end
