class AddStreetAddressToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :street_address, :string
  end
end
