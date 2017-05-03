json.extract! resource, :id, :name, :email, :phone, :address, :created_at, :updated_at
json.url resource_url(resource, format: :json)
