class FixNewMonetaryColumns < ActiveRecord::Migration[5.1]
  def change
    change_column :projects, :bid_fuel_cost, :decimal, precision: 8, scale: 2
    change_column :projects, :bid_lodging_cost, :decimal, precision: 8, scale: 2
  end
end
