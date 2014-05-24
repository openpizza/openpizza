class CreateAddressesUsers < ActiveRecord::Migration
  def change
    create_table :addresses_users do |t|
      t.integer :user_id
      t.integer :address_id

      t.timestamps
    end
  end
end
