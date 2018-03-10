json.extract! employee, :id, :employee_status_id, :employee_type_id, :state_id, :first_name, :last_name, :join_date, :dismiss_date, :created_at, :updated_at
json.url employee_url(employee, format: :json)
