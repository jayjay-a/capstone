class CreateProjectnotes < ActiveRecord::Migration[5.1]
  def change
    create_table :projectnotes, id: false do |t|
      t.primary_key :project_note_id
      t.integer :project_id
      t.text :project_notes
      t.date :project_note_date
      t.string :note_owner

      t.timestamps
    end
  end
end
