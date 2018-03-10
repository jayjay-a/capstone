class CreateSubcontractors < ActiveRecord::Migration[5.1]
  def change
    create_table :subcontractors, id: false do |t|
      t.primary_key :subcontractor_id
      t.integer :subcontractor_status_id
      t.string :subcontractor_name
      t.string :subcontractor_phone
      t.string :subcontractor_email
      t.string :company

      t.timestamps
    end
  end
end
