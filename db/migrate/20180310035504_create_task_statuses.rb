class CreateTaskStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :task_statuses, id: false do |t|
      t.primary_key :task_status_id
      t.string :task_status_description

      t.timestamps
    end
  end
end
