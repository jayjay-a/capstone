class CreateProjectStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :project_statuses, id: false do |t|
      t.primary_key :project_status_id
      t.string :project_status_description

      t.timestamps
    end
  end
end
