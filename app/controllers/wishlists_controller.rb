class WishlistsController < ApplicationController

  def index
    @products = current_user.products
  end

  def create
    @wishlist = Wishlist.create(
      user_id: current_user.id, 
      product_id: params[:product_id],
      )
    flash[:success] = "Added to Wishlist"
    redirect_to "/wishlist"
  end

end
