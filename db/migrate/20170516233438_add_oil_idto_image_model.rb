class AddOilIdtoImageModel < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :oils_id, :integer
  end
end
