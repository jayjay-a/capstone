class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects, id: false do |t|
      t.primary_key :project_id
      t.integer :customer_id
      t.integer :project_status_id
      t.integer :project_type_id
      t.date :project_start_date
      t.date :project_end_date
      t.date :bid_submit_date
      t.decimal :bid_material_cost
      t.string :bid_cost_of_labor_decimal
      t.decimal :bid_cost_of_permits
      t.decimal :bid_equipment_rental
      t.string :bid_freight_decimal
      t.decimal :tax_rate
      t.decimal :bid_amount

      t.timestamps
    end
  end
end
