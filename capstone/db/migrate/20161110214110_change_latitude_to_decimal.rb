class ChangeLatitudeToDecimal < ActiveRecord::Migration[5.0]
  def change
    change_column :images, :latitude, :decimal, precision: 10, scale: 7
  end
end
