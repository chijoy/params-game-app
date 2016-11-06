class AddColumnsToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :latitude, :integer
    add_column :images, :longitude, :integer
  end
end
