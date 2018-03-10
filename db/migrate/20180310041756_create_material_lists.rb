class CreateMaterialLists < ActiveRecord::Migration[5.1]
  def change
    create_table :material_lists, id: false do |t|
      t.primary_key :material_list_id
      t.integer :project_id
      t.integer :material_id
      t.decimal :unit_price
      t.decimal :quantity

      t.timestamps
    end
  end
end
