class RemoveProductIdFromTags < ActiveRecord::Migration
  def change
    remove_column :tags, :product_id, :integer
    add_column :tags, :dupe_id, :integer
  end
end
