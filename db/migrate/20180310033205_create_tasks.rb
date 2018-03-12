class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks, id: false do |t|
      t.primary_key :task_id
      t.integer :job_id
      t.integer :assignment_id
      t.integer :task_status_id
      t.date :task_start_date
      t.date :task_end_date
      t.string :task_description

      t.timestamps
    end
  end
end
