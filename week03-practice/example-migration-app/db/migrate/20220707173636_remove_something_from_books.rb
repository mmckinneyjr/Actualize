class RemoveSomethingFromBooks < ActiveRecord::Migration[7.0]
  def change
    remove_column :books, :name, :string
  end
end
