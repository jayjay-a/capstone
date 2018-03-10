json.extract! task_note, :id, :task_id, :task_notes, :task_note_owner, :taske_note_date, :created_at, :updated_at
json.url task_note_url(task_note, format: :json)
