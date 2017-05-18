class ChangeOilsOnImages < ActiveRecord::Migration[5.1]
  def change
    rename_column :images, :oils_id, :oil_id
  end
end
