class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs, id: false do |t|
      t.primary_key :job_id
      t.integer :project_id
      t.integer :job_type_id
      t.integer :job_status_id
      t.date :job_start_date
      t.date :job_end_date

      t.timestamps
    end
  end
end
