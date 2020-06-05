json.extract! measurement, :id, :moment, :temperature, :deployment_id, :created_at, :updated_at
json.url measurement_url(measurement, format: :json)
