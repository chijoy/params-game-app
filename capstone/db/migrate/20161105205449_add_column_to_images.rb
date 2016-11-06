class AddColumnToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :graffiti_image, :string
  end
end
