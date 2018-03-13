class FixProjectsDecimalColumns < ActiveRecord::Migration[5.1]
  def change
    rename_column :projects, :bid_cost_of_labor_decimal, :bid_cost_of_labor
    rename_column :projects, :bid_freight_decimal, :bid_freight

    change_column :projects, :bid_cost_of_labor, 'numeric USING CAST(bid_cost_of_labor AS numeric)'
    change_column :projects, :bid_freight, 'numeric USING CAST(bid_freight AS numeric)'
  end
end
