class CreateJobStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :job_statuses, id: false do |t|
      t.primary_key :job_status_id
      t.string :job_status_description

      t.timestamps
    end
  end
end
