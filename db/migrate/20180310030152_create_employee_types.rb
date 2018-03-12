class CreateEmployeeTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :employee_types, id: false do |t|
      t.primary_key :employee_type_id
      t.string :employee_type_description

      t.timestamps
    end
  end
end
