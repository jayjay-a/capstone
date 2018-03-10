class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments, id: false  do |t|
      t.primary_key :assignment_id
      t.integer :subcontractor_id
      t.integer :task_id
      t.integer :employee_id
      t.date :assignment_date

      t.timestamps
    end
  end
end
