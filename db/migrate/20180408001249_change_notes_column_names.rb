class ChangeNotesColumnNames < ActiveRecord::Migration[5.1]
  def change
    rename_column :job_notes, :job_notes_owner, :job_note_owner
    rename_column :job_notes, :job_note_date, :job_note_date
    rename_column :project_notes, :note_owner, :project_note_owner
  end
end
