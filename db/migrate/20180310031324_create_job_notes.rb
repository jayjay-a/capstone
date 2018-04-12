class CreateJobNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :job_notes, id: false do |t|
      t.primary_key :job_notes_id
      t.integer :job_id
      t.text :job_notes
      t.string :job_notes_owner
      t.date :job_notes_date

      t.timestamps
    end
  end
end
