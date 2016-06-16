class RemoveProductIdFromVotes < ActiveRecord::Migration
  def change
    remove_column :votes, :product_id, :integer
    add_column :votes, :dupe_id, :integer
  end
end
