class CreateCategoryOils < ActiveRecord::Migration[5.1]
  def change
    create_table :category_oils do |t|
      t.integer :category_id
      t.integer :oil_id

      t.timestamps
    end
  end
end
