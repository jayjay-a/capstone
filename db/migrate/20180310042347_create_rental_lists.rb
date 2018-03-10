class CreateRentalLists < ActiveRecord::Migration[5.1]
  def change
    create_table :rental_lists, id: false do |t|
      t.primary_key :rental_list_id
      t.integer :project_id
      t.integer :rental_equipment_id
      t.decimal :rental_price
      t.string :cost_frequency

      t.timestamps
    end
  end
end
