class AddPriceToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :price, :string
  end
end
