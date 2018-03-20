class JobNotePkRename < ActiveRecord::Migration[5.1]
  def change
    rename_column :job_notes, :job_notes_id, :job_note_id
  end
end
