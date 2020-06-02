json.extract! datum, :id, :date_time, :temperature, :deployment_id, :created_at, :updated_at
json.url datum_url(datum, format: :json)
