json.extract! customer, :id, :state_id, :customer_status_id, :customer_name, :customer_branch, :customer_address_1, :customer_address_2, :string, :customer_rep_name_1, :customer_rep_name_2, :customer_rep_phone_1, :customer_rep_phone_2, :customer_rep_email_1, :customer_rep_email_2, :created_at, :updated_at
json.url customer_url(customer, format: :json)
