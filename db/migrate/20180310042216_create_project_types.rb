class CreateProjectTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :project_types, id: false do |t|
      t.primary_key :project_type_id
      t.string :project_type_description

      t.timestamps
    end
  end
end
