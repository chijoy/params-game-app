class ChangeLongitudeToDecimal < ActiveRecord::Migration[5.0]
  def change
    change_column :images, :longitude, :decimal, precision: 10, scale: 7
  end
end
