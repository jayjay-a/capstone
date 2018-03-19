class BigintToInt < ActiveRecord::Migration[5.1]
  def change
    change_column :assignments,             :assignment_id,             :integer
    change_column :customers,               :customer_id,               :integer
    change_column :customer_statuses,       :customer_status_id,        :integer
    change_column :employees,               :employee_id,               :integer
    change_column :employee_statuses,       :employee_status_id,        :integer
    change_column :employee_types,          :employee_type_id,          :integer
    change_column :jobs,                    :job_id,                    :integer
    change_column :job_notes,               :job_note_id,               :integer
    change_column :job_statuses,            :job_status_id,             :integer
    change_column :job_types,               :job_type_id,               :integer
    change_column :materials,                :material_id,               :integer
    change_column :material_lists,          :material_list_id,          :integer
    change_column :projects,                :project_id,                :integer
    change_column :project_notes,           :project_note_id,           :integer
    change_column :project_statuses,        :project_status_id,         :integer
    change_column :project_types,           :project_type_id,           :integer
    change_column :rental_equipments,       :rental_equipment_id,       :integer
    change_column :rental_lists,            :rental_list_id,            :integer
    change_column :states,                  :state_id,                  :integer
    change_column :subcontractors,          :subcontractor_id,          :integer
    change_column :subcontractor_statuses,  :subcontractor_status_id,   :integer
    change_column :tasks,                   :task_id,                   :integer
    change_column :task_notes,              :task_note_id,              :integer
    change_column :task_statuses,           :task_status_id,            :integer
  end
end
