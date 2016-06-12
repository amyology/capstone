class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :color_id
      t.string :type
      t.string :brand
      t.string :finish
      t.string :undertone

      t.timestamps null: false
    end
  end
end
