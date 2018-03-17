class ProjectJobTaskFks < ActiveRecord::Migration[5.1]
  def change
    add_index :jobs, :project_id
    add_foreign_key :jobs, :projects, primary_key: :project_id

    add_index :tasks, :job_id
    add_foreign_key :tasks, :jobs, primary_key: :job_id
  end
end
