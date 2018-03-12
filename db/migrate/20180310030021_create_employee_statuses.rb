class CreateEmployeeStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :employee_statuses, id: false do |t|
      t.primary_key :employee_status_id
      t.string :employee_status_description

      t.timestamps
    end
  end
end
