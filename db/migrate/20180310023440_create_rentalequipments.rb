class CreateRentalequipments < ActiveRecord::Migration[5.1]
  def change
    create_table :rentalequipments, id: false do |t|
      t.primary_key :rental_equipment_id
      t.string :rental_description

      t.timestamps
    end
  end
end
