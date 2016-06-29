class ProductsController < ApplicationController

  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]

  def vibrant
  end

  def colorthief
  end

  def index
    @products = Product.all
    @recent_products = Product.all.sort_by { |product| [product.created_at, product.updated_at].max }.reverse!.take(5)

    search = params[:search]

    if search
      @searched = @products.where("name ILIKE ? OR brand ILIKE ? OR product_color ILIKE ? OR product_type ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    end
  end

  def show
    @product = Product.find(params[:id])
    @options = Product.all.map { |product| [product.name, product.id] }
    @top_dupes = @product.dupes.sort_by { |product| [product.votes.count] }.reverse!.take(5)
  end

  def new
    
  end

  def create
    @product = Product.create(
      name: params[:name],
      brand: params[:brand],
      finish: params[:finish],
      undertone: params[:undertone],
      product_type: params[:product_type],
      product_color: params[:product_color],
      image: params[:image]
      )
    flash[:success] = "Product Added"
    redirect_to "/products/#{@product.id}"
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(
      name: params[:name],
      brand: params[:brand],
      finish: params[:finish],
      undertone: params[:undertone],
      product_type: params[:product_type],
      product_color: params[:product_color],
      image: params[:image]
      )
    flash[:success] = "Product Added"
    redirect_to "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    flash[:success] = "Product Deleted"
    redirect_to "/"
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
