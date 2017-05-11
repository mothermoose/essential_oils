class ChangeDatatypeUses < ActiveRecord::Migration[5.1]
  def change 
    change_column :oils, :uses, :text
    change_column :oils, :price, :decimal, precision: 5, scale: 2
  end 
end
