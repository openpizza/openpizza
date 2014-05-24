class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :sub_order_id
      t.integer :product_id
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
