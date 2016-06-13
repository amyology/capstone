class AddProductColorToProducts < ActiveRecord::Migration
  def change
    add_column :products, :product_color, :string
    remove_column :products, :color, :string
  end
end
