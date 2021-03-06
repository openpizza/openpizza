class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :uuid
      t.integer :shop_id
      t.integer :user_id
      t.integer :address_id

      t.timestamps
    end

    add_index :orders, :uuid, unique: true
  end
end
