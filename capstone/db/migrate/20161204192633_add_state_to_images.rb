class AddStateToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :state, :string
  end
end
