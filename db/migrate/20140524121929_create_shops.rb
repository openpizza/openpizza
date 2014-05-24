class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.integer :address_id
      t.integer :user_id

      t.timestamps
    end
  end
end
