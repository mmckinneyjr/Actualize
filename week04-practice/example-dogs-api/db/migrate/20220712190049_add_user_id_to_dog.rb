class AddUserIdToDog < ActiveRecord::Migration[7.0]
  def change
    add_column :dogs, :user_id, :string
  end
end
