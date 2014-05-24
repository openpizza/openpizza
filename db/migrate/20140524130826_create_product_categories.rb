class CreateProductCategories < ActiveRecord::Migration
  def change
    create_table :product_categories do |t|
      t.string :name
      t.integer :shop_id

      t.timestamps
    end
  end
end
