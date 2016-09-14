class RemoveFloorsFromListing < ActiveRecord::Migration[5.0]
  def change
    remove_column :listings, :floors, :integer
  end
end
