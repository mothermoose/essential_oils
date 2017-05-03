class CreateOils < ActiveRecord::Migration[5.1]
  def change
    create_table :oils do |t|
      t.string :name
      t.string :uses
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
