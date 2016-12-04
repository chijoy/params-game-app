class AddCityToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :city, :string
  end
end
