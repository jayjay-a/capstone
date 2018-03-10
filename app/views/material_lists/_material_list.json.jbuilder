json.extract! material_list, :id, :project_id, :material_id, :unit_price, :quantity, :created_at, :updated_at
json.url material_list_url(material_list, format: :json)
