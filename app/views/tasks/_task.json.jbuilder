json.extract! task, :id, :job_id, :assignment_id, :task_status_id, :task_start_date, :task_end_date, :task_description, :created_at, :updated_at
json.url task_url(task, format: :json)
