class CreateGangs < ActiveRecord::Migration[5.0]
  def change
    create_table :gangs do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
