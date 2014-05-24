class CreateSubOrders < ActiveRecord::Migration
  def change
    create_table :sub_orders do |t|
      t.string :nickname
      t.integer :order_id
      t.text :comment

      t.timestamps
    end
  end
end
