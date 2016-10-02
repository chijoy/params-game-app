class AddLocationToImage < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :location, :string
  end
end
