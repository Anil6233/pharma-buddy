json.extract! medicine, :id, :name, :cost, :quantity, :manufacturer_date, :expiry_date, :created_at, :updated_at
json.url medicine_url(medicine, format: :json)
