class CreateMaterials < ActiveRecord::Migration[5.1]
  def change
    create_table :materials, id: false do |t|
      t.primary_key :material_id
      t.string :material_description

      t.timestamps
    end
  end
end
