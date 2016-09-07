class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :address
      t.string :type
      t.string :location
      t.string :landmark
      t.string :nearby_addresses

      t.timestamps
    end
  end
end
