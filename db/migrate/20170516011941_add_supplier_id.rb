class AddSupplierId < ActiveRecord::Migration[5.1]
  def change
    add_column :oils, :supplier_id, :string
  end
end
