class RemoveColorIdFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :color_id, :integer
    remove_column :products, :type, :string
    add_column :products, :product_type, :string
  end
end

