json.extract! job_status, :id, :job_status_description, :created_at, :updated_at
json.url job_status_url(job_status, format: :json)
