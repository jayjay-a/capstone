class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :states, id: false do |t|
      t.primary_key :state_id
      t.string :state_name
      t.string :state_abbrev

      t.timestamps
    end
  end
end
