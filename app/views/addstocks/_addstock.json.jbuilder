json.extract! addstock, :id, :name, :cost, :quantity, :manufacturer_date, :expiry_date, :created_at, :updated_at
json.url addstock_url(addstock, format: :json)
