class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees, id: false do |t|
      t.primary_key :employee_id
      t.integer :employee_status_id
      t.integer :employee_type_id
      t.integer :state_id
      t.string :first_name
      t.string :last_name
      t.date :join_date
      t.date :dismiss_date

      t.timestamps
    end
  end
end
