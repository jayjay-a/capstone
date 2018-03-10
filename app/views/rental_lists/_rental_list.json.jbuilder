json.extract! rental_list, :id, :project_id, :rental_equipment_id, :rental_price, :cost_frequency, :created_at, :updated_at
json.url rental_list_url(rental_list, format: :json)
