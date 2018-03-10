json.extract! project_note, :id, :project_id, :project_notes, :project_note_date, :note_owner, :created_at, :updated_at
json.url project_note_url(project_note, format: :json)
