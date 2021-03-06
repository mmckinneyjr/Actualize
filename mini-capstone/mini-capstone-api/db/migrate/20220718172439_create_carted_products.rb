class CreateCartedProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :carted_products do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :quantity
      t.string :status
      t.integer :order_id

      t.timestamps
    end

    remove_column :orders, :product_id, :integer
    remove_column :orders, :quantity, :integer
  end
end
