class RemoveNameFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :name, :string
    remove_column :users, :cell_phone_number, :string
  end
end
