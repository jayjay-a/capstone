class FixMonetaryDatatypes < ActiveRecord::Migration[5.1]
  def change
    change_column :projects, :bid_material_cost, :decimal, precision: 8, scale: 2
    change_column :projects, :bid_cost_of_labor, :decimal, precision: 8, scale: 2
    change_column :projects, :bid_cost_of_permits, :decimal, precision: 8, scale: 2
    change_column :projects, :bid_equipment_rental, :decimal, precision: 8, scale: 2
    change_column :projects, :bid_freight, :decimal, precision: 8, scale: 2
    change_column :projects, :bid_amount, :decimal, precision: 8, scale: 2
    change_column :rental_lists, :rental_price, :decimal, precision: 8, scale: 2
    change_column :material_lists, :unit_price, :decimal, precision: 8, scale: 2
  end
end
