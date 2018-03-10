json.extract! rentallist, :id, :project_id, :rental_equipment_id, :rental_price, :cost_frequency, :created_at, :updated_at
json.url rentallist_url(rentallist, format: :json)
