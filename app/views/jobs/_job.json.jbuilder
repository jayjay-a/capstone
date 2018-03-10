json.extract! job, :id, :project_id, :job_type_id, :job_status_id, :job_start_date, :job_end_date, :created_at, :updated_at
json.url job_url(job, format: :json)
