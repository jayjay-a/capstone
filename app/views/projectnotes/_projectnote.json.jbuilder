json.extract! projectnote, :id, :project_id, :project_notes, :project_note_date, :note_owner, :created_at, :updated_at
json.url projectnote_url(projectnote, format: :json)
