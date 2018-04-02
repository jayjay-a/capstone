class AddLodgingAndFuelToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :bid_fuel_cost, :decimal
    add_column :projects, :bid_lodging_cost, :decimal
  end
end
