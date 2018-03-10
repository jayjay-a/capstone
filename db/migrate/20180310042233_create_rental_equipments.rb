class CreateRentalEquipments < ActiveRecord::Migration[5.1]
  def change
    create_table :rental_equipments, id: false do |t|
      t.primary_key :rental_equipment_id
      t.string :rental_description

      t.timestamps
    end
  end
end
