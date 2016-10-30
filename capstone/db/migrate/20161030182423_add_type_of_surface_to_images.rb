class AddTypeOfSurfaceToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :type_of_surface, :string
  end
end
