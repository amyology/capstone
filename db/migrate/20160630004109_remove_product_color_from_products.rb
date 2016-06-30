class RemoveProductColorFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :product_color, :string
    remove_column :colors, :name, :string
    remove_column :colors, :value, :string
    add_column :colors, :red, :integer
    add_column :colors, :green, :integer
    add_column :colors, :blue, :integer
  end
end
