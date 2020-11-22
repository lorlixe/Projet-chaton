class CreateProductCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :product_carts do |t|
      t.belongs_to :cart, index: true
      t.belongs_to :product, index: true
      t.integer :quantity
      t.float :total_price
      
      t.timestamps
    end
  end
end
