json.extract! bill_generation, :id, :sno, :items, :total, :discount, :amount, :created_at, :updated_at
json.url bill_generation_url(bill_generation, format: :json)
