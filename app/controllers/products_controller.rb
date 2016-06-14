class ProductsController < ApplicationController
  
  def index
    @products = Product.all
    @recent_products = Product.all.sort_by { |product| [product.created_at, product.updated_at].max }.reverse!.take(5)

    search = params[:search]

    if search
      @products = @products.where("name ILIKE ? OR brand ILIKE ? OR product_color ILIKE ? OR product_type ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    end

  end

  def show
    @product = Product.find(params[:id])
  end

  def colors
    @green = Product.where(product_color: "green")
    @red = Product.where(product_color: "red")
    @peach = Product.where(product_color: "peach")
    @maroon = Product.where(product_color: "maroon")
    @teal = Product.where(product_color: "teal")
    @aqua = Product.where(product_color: "aqua")
    @blue = Product.where(product_color: "blue")
    @orange = Product.where(product_color: "orange")
    @gold = Product.where(product_color: "gold")
    @silver = Product.where(product_color: "silver")
    @turquoise = Product.where(product_color: "turquoise")
    @white = Product.where(product_color: "white")
    @lavender = Product.where(product_color: "lavender")
    @copper = Product.where(product_color: "copper")
    @black = Product.where(product_color: "black")
    @violet = Product.where(product_color: "violet")
  end

end
