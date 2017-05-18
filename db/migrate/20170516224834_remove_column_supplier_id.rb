class RemoveColumnSupplierId < ActiveRecord::Migration[5.1]
  def change
    remove_column :oils, :supplier_id, :string
    add_column :oils, :supplier_id, :integer
  end
end
