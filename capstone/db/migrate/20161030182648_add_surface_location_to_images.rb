class AddSurfaceLocationToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :surface_location, :string
  end
end
