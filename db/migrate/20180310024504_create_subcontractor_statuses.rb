class CreateSubcontractorStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :subcontractor_statuses, id: false do |t|
      t.primary_key :subcontractor_status_id
      t.string :subcontractor_status_description

      t.timestamps
    end
  end
end
