class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :image
      t.string :name
      t.string :status
      t.string :notes

      t.timestamps
    end
  end
end
