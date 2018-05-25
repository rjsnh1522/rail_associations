json.extract! product, :id, :name, :user_id, :color, :purchase_date, :cost, :created_at, :updated_at
json.url product_url(product, format: :json)
