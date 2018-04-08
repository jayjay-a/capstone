json.extract! job_note, :id, :job_id, :job_notes, :job_note_owner, :job_note_date, :created_at, :updated_at
json.url job_note_url(job_note, format: :json)
