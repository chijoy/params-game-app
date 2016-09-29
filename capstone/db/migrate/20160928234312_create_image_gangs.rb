class CreateImageGangs < ActiveRecord::Migration[5.0]
  def change
    create_table :image_gangs do |t|

      t.timestamps
    end
  end
end
