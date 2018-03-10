json.extract! project, :id, :customer_id, :project_status_id, :er, :project_type_id, :project_start_date, :project_end_date, :bid_submit_date, :bid_material_cost, :bid_cost_of_labor_decimal, :bid_cost_of_permits, :bid_equipment_rental, :bid_freight_decimal, :tax_rate, :bid_amount, :created_at, :updated_at
json.url project_url(project, format: :json)
