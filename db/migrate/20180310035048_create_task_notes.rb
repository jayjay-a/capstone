class CreateTaskNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :task_notes, id: false do |t|
      t.primary_key :task_note_id
      t.integer :task_id
      t.text :task_notes
      t.string :task_note_owner
      t.date :task_note_date

      t.timestamps
    end
  end
end
