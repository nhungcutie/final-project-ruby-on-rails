json.extract! customer, :id, :customer_name, :customer_code, :nationality, :date_birth, :address, :created_at, :updated_at
json.url customer_url(customer, format: :json)
