class AddSoftDeletes < ActiveRecord::Migration[5.1]
  def change

    add_column :assignments, :deleted_at, :datetime
    add_index :assignments, :deleted_at

    add_column :customers, :deleted_at, :datetime
    add_index :customers, :deleted_at

    add_column :customer_statuses, :deleted_at, :datetime
    add_index :customer_statuses, :deleted_at

    add_column :employees, :deleted_at, :datetime
    add_index :employees, :deleted_at

    add_column :employee_statuses, :deleted_at, :datetime
    add_index :employee_statuses, :deleted_at

    add_column :employee_types, :deleted_at, :datetime
    add_index :employee_types, :deleted_at

    add_column :jobs, :deleted_at, :datetime
    add_index :jobs, :deleted_at

    add_column :job_notes, :deleted_at, :datetime
    add_index :job_notes, :deleted_at

    add_column :job_statuses, :deleted_at, :datetime
    add_index :job_statuses, :deleted_at    
    
    add_column :job_types, :deleted_at, :datetime
    add_index :job_types, :deleted_at

    add_column :materials, :deleted_at, :datetime
    add_index :materials, :deleted_at

    add_column :material_lists, :deleted_at, :datetime
    add_index :material_lists, :deleted_at

    add_column :projects, :deleted_at, :datetime
    add_index :projects, :deleted_at

    add_column :project_notes, :deleted_at, :datetime
    add_index :project_notes, :deleted_at

    add_column :project_statuses, :deleted_at, :datetime
    add_index :project_statuses, :deleted_at

    add_column :project_types, :deleted_at, :datetime
    add_index :project_types, :deleted_at

    add_column :rental_equipments, :deleted_at, :datetime
    add_index :rental_equipments, :deleted_at

    add_column :rental_lists, :deleted_at, :datetime
    add_index :rental_lists, :deleted_at

    add_column :states, :deleted_at, :datetime
    add_index :states, :deleted_at

    add_column :subcontractors, :deleted_at, :datetime
    add_index :subcontractors, :deleted_at

    add_column :subcontractor_statuses, :deleted_at, :datetime
    add_index :subcontractor_statuses, :deleted_at

    add_column :tasks, :deleted_at, :datetime
    add_index :tasks, :deleted_at

    add_column :task_notes, :deleted_at, :datetime
    add_index :task_notes, :deleted_at

    add_column :task_statuses, :deleted_at, :datetime
    add_index :task_statuses, :deleted_at

  end
end
