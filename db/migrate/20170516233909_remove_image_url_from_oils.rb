class RemoveImageUrlFromOils < ActiveRecord::Migration[5.1]
  def change
    remove_column :oils, :image, :string
  end
end
