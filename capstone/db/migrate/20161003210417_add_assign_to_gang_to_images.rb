class AddAssignToGangToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :assign_to_gang, :string
  end
end
