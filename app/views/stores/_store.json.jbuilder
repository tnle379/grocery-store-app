json.extract! store, :id, :name, :description, :url, :status, :code, :address, :city, :state, :zip, :country, :created_at, :updated_at
json.url store_url(store, format: :json)
