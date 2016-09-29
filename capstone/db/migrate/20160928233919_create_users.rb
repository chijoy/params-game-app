class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :cell_phone_number
      t.string :admin

      t.timestamps
    end
  end
end
