class CreateProjectstatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :projectstatuses, id: false do |t|
      t.primary_key :project_status_id
      t.string :project_status_description

      t.timestamps
    end
  end
end
